uint64_t one-time initialization function for observationInfoSetter()
{
  result = Selector.init(_:)();
  static NSKeyValueObservation.Helper.observationInfoSetter = result;
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __int128 *a4@<X3>, unint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v194 = a6;
  v238 = *MEMORY[0x1E69E9840];
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    v14 = (*(*(v6 + 16) + 168) & 1) != 0 ? MEMORY[0x1865CBC20](0, 0xE000000000000000) : String.subscript.getter();
    v16 = v14;
    v17 = v15;

    if (!((v16 ^ v17) >> 14))
    {
      v18 = URLParseInfo.netLocationRange.getter();
      if ((v20 & 1) != 0 || !((v18 ^ v19) >> 14))
      {
        v113 = v194;
        *v194 = 0;
        v113[1] = 0;
        return;
      }
    }
  }

  v21 = 0;
  *&v229 = a1;
  *(&v229 + 1) = a2;

  v22 = String.init<A>(_:)();
  v24 = v23;
  if (_SwiftURL.isFileURL.getter())
  {

    v22 = specialized String.withFileSystemRepresentation<A>(_:)(v22, v24, v22, v24);
    v26 = v25;
    swift_bridgeObjectRelease_n();
    v24 = v26;
  }

  if (a4)
  {
    *&v217 = MEMORY[0x1E69E7CD0];
    v27 = specialized Set._Variant.insert(_:)(&v229, 47);
    if ((a5 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((a5 & 1) == 0)
  {
    v44 = 0;
    *&v229 = v22;
    *(&v229 + 1) = v24;
    v45 = 1 << *(MEMORY[0x1E69E7CD0] + 32);
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & *(MEMORY[0x1E69E7CD0] + 56);
    v48 = (v45 + 63) >> 6;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v47)
          {
            do
            {
              v49 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                __break(1u);
                goto LABEL_165;
              }

              if (v49 >= v48)
              {
                goto LABEL_64;
              }

              v47 = *(MEMORY[0x1E69E7CD0] + 8 * v49 + 56);
              ++v44;
            }

            while (!v47);
            v44 = v49;
          }

          v50 = __clz(__rbit64(v47));
          v47 &= v47 - 1;
          v51 = *(*(MEMORY[0x1E69E7CD0] + 48) + (v50 | (v44 << 6)));
          if ((v51 - 38) >= 0xA && v51 != 33 && v51 != 36)
          {
            v52 = v51 - 58;
            if ((v51 - 58) <= 0xFFFFFFF5)
            {
              break;
            }
          }
        }

        if (v52 <= 6)
        {
          break;
        }

LABEL_59:
        if (v51 != 95 && (v51 - 65) >= 0x1A && v51 != 126 && (v51 - 97) >= 0x1A)
        {
LABEL_63:

          __break(1u);
LABEL_64:

          MEMORY[0x1EEE9AC00](v53);
          v188 = &v229;
          LOWORD(v189) = 16;
          v54 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, &v186, v22, v24);
          if (!v55)
          {
            v54 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v22, v24, 0x10u, 0);
          }

          v40 = v54;
          v41 = v55;
          goto LABEL_67;
        }
      }

      if (((1 << v52) & 0x4B) == 0)
      {
        if (v51 == 63)
        {
          goto LABEL_63;
        }

        goto LABEL_59;
      }
    }
  }

  *&v217 = MEMORY[0x1E69E7CD0];
LABEL_17:
  v27 = specialized Set._Variant.insert(_:)(&v229, 59);
LABEL_18:
  v28 = 0;
  v29 = v217;
  v203 = v22;
  *v204 = v24;
  v30 = 1 << *(v217 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v217 + 56);
  v33 = (v30 + 63) >> 6;
  do
  {
    while (1)
    {
      while (1)
      {
        if (!v32)
        {
          while (1)
          {
            v34 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v34 >= v33)
            {
              goto LABEL_38;
            }

            v32 = *(v217 + 56 + 8 * v34);
            ++v28;
            if (v32)
            {
              v28 = v34;
              goto LABEL_26;
            }
          }

          __break(1u);
          goto LABEL_161;
        }

LABEL_26:
        v35 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v36 = *(*(v217 + 48) + (v35 | (v28 << 6)));
        if ((v36 - 38) >= 0xA && v36 != 33 && v36 != 36)
        {
          v37 = v36 - 58;
          if ((v36 - 58) <= 0xFFFFFFF5)
          {
            break;
          }
        }
      }

      if (v37 > 6)
      {
        break;
      }

      if (((1 << v37) & 0x4B) == 0)
      {
        if (v36 == 63)
        {
          goto LABEL_37;
        }

        break;
      }
    }
  }

  while (v36 == 95 || (v36 - 65) < 0x1A || v36 == 126 || (v36 - 97) < 0x1A);
LABEL_37:
  __break(1u);
LABEL_38:
  MEMORY[0x1EEE9AC00](v27);
  v188 = &v203;
  LOWORD(v189) = 16;
  v38 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, &v186, v22, v24);
  if (!v39)
  {
    v38 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v22, v24, 0x10u, 0);
  }

  v40 = v38;
  v41 = v39;
  if (!v29[2] || (v42 = specialized Collection.firstIndex(where:)(v38, v39, v29), (v43 & 1) != 0))
  {

LABEL_67:

    goto LABEL_79;
  }

  v191 = a3;
  v192 = v7;
  v193 = 0;
  v56 = specialized Collection.suffix(from:)(v42, v40, v41);
  *&v229 = v56;
  *(&v229 + 1) = v57;
  *&v230 = v58;
  *(&v230 + 1) = v59;
  if ((v59 & 0x1000000000000000) != 0)
  {
    Substring._slowMakeContiguousUTF8()();
    v60 = *(&v230 + 1);
    v58 = v230;
    v57 = *(&v229 + 1);
    v56 = v229;
  }

  else
  {
    v60 = v59;
  }

  v61 = v56 >> 16;
  v62 = v57 >> 16;
  if ((v60 & 0x2000000000000000) != 0)
  {
    *v201 = v58;
    *&v201[8] = v60 & 0xFFFFFFFFFFFFFFLL;
    v64 = v62 - v61;
    v63 = &v201[v61];
    goto LABEL_76;
  }

  if ((v58 & 0x1000000000000000) == 0)
  {
    goto LABEL_173;
  }

  v63 = ((v60 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_73:
  v63 += v61;
  while (1)
  {
    v64 = v62 - v61;
LABEL_76:
    v65 = v193;
    closure #3 in static RFC3986Parser.percentEncode<A>(pathComponent:including:)(v63, v64, v29, &v222);
    v193 = v65;
    if (v65)
    {

      __break(1u);
      return;
    }

    v61 = v222;
    a3 = *v223;
    v66 = String.subscript.getter();
    v62 = v67;
    v69 = v68;
    v71 = v70;

    *v201 = 0;
    *&v201[8] = 0xE000000000000000;
    v72 = String.count.getter();
    v73 = Substring.distance(from:to:)();
    v74 = __OFADD__(v72, v73);
    v75 = v72 + v73;
    if (!v74)
    {
      break;
    }

    __break(1u);
LABEL_173:
    v63 = _StringObject.sharedUTF8.getter();
    if (v63)
    {
      goto LABEL_73;
    }
  }

  MEMORY[0x1865CAED0](v75);
  v222 = v66;
  *v223 = v62;
  *&v223[8] = v69;
  *&v223[16] = v71;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();
  v222 = v61;
  *v223 = a3;
  String.append<A>(contentsOf:)();

  v40 = *v201;
  v41 = *&v201[8];
  v7 = v192;
  v21 = v193;
  LOBYTE(a3) = v191;
LABEL_79:
  v199[0] = v40;
  v199[1] = v41;
  v24 = specialized appendedPath #1 <A>() in _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(v7, v199);
  v22 = v76;

  v197 = v24;
  v198 = v22;
  v77 = specialized BidirectionalCollection.last.getter(v24, v22);
  if (a3 > 1u)
  {
    if (a3 != 2 || (v78 = v21, v79 = v77, v80 = _SwiftURL.isFileURL.getter(), v77 = v79, (v80 & 1) == 0))
    {
      if ((v77 & 0x1FF) != 0x2F)
      {
        goto LABEL_149;
      }

      goto LABEL_105;
    }

    v81 = specialized Collection.first.getter(v24, v22) & 0x1FF;
    v192 = v7;
    v193 = v78;
    if (v81 != 47)
    {
      if ((specialized Collection.first.getter(v24, v22) & 0x1FF) == 0x2F)
      {
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
      }

      if (*(v7 + 24))
      {
        v114 = *(v7 + 32);
        ObjectType = swift_getObjectType();
        v116 = *(v114 + 224);
        swift_unknownObjectRetain();
        v117 = v116(1, ObjectType, v114);
        v119 = v118;
        if ((*(v114 + 152))(ObjectType, v114))
        {
          v120 = HIBYTE(v119) & 0xF;
          if ((v119 & 0x2000000000000000) == 0)
          {
            v120 = v117 & 0xFFFFFFFFFFFFLL;
          }

          if (!v120)
          {

            *&v229 = 47;
            *(&v229 + 1) = 0xE100000000000000;
            MEMORY[0x1865CB0E0](v24, v22);
            swift_unknownObjectRelease();
            v125 = *(&v229 + 1);
            v124 = v229;
            goto LABEL_118;
          }
        }

        v121 = specialized Collection.first.getter(v24, v22);
        if ((v121 & 0x1FF) != 0x2F)
        {
          LOBYTE(v229) = 47;
          MEMORY[0x1EEE9AC00](v121);
          v188 = &v229;
          v122 = v193;
          specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v186, v117, v119);
          v193 = v122;
          if ((v123 & 1) == 0)
          {
LABEL_161:
            String.index(after:)();
            v168 = String.subscript.getter();
            v170 = v169;
            v172 = v171;
            v174 = v173;
            v222 = 0;
            *v223 = 0xE000000000000000;
            v175 = String.count.getter();
            v176 = Substring.distance(from:to:)();
            v74 = __OFADD__(v175, v176);
            v177 = v175 + v176;
            if (v74)
            {
              goto LABEL_184;
            }

            MEMORY[0x1865CAED0](v177);
            *&v229 = v168;
            *(&v229 + 1) = v170;
            *&v230 = v172;
            *(&v230 + 1) = v174;
            lazy protocol witness table accessor for type Substring and conformance Substring();
            String.append<A>(contentsOf:)();
            *&v229 = v24;
            *(&v229 + 1) = v22;

            String.append<A>(contentsOf:)();

            swift_unknownObjectRelease();
            v124 = v222;
            v125 = *v223;
LABEL_118:
            v126 = String._droppingTrailingSlashes.getter(v124, v125);
            v7 = v127;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
            v128 = static _SetStorage.allocate(capacity:)();
            v129 = v128 + 56;
            v86 = *(v128 + 40);
            v87 = byte_1EEED3B18;
            v130 = MEMORY[0x1865CD020](v86, byte_1EEED3B18, 1);
            v131 = -1 << *(v128 + 32);
            v132 = v130 & ~v131;
            v133 = v132 >> 6;
            v134 = *(v128 + 56 + 8 * (v132 >> 6));
            v135 = 1 << v132;
            v136 = *(v128 + 48);
            if (((1 << v132) & v134) != 0)
            {
              v137 = ~v131;
              while (*(v136 + v132) != v87)
              {
                v132 = (v132 + 1) & v137;
                v133 = v132 >> 6;
                v134 = *(v129 + 8 * (v132 >> 6));
                v135 = 1 << v132;
                if (((1 << v132) & v134) == 0)
                {
                  goto LABEL_122;
                }
              }
            }

            else
            {
LABEL_122:
              *(v129 + 8 * v133) = v135 | v134;
              *(v136 + v132) = v87;
              v138 = *(v128 + 16);
              v74 = __OFADD__(v138, 1);
              v139 = v138 + 1;
              if (v74)
              {
                goto LABEL_176;
              }

              *(v128 + 16) = v139;
            }

            v87 = byte_1EEED3B19;
            v140 = MEMORY[0x1865CD020](v86, byte_1EEED3B19, 1);
            v141 = -1 << *(v128 + 32);
            v142 = v140 & ~v141;
            v143 = v142 >> 6;
            v144 = *(v129 + 8 * (v142 >> 6));
            v145 = 1 << v142;
            v146 = *(v128 + 48);
            if (((1 << v142) & v144) != 0)
            {
              v147 = ~v141;
              while (*(v146 + v142) != v87)
              {
                v142 = (v142 + 1) & v147;
                v143 = v142 >> 6;
                v144 = *(v129 + 8 * (v142 >> 6));
                v145 = 1 << v142;
                if (((1 << v142) & v144) == 0)
                {
                  goto LABEL_128;
                }
              }

LABEL_130:
              v150 = HIBYTE(v7) & 0xF;
              if ((v7 & 0x2000000000000000) == 0)
              {
                v150 = v126 & 0xFFFFFFFFFFFFLL;
              }

              if (v150)
              {
                *&v229 = v126;
                *(&v229 + 1) = v7;
                MEMORY[0x1EEE9AC00](v140);
                v186 = &v229;
                v187 = v128;
                v188 = 4;

                v151 = v193;
                v152 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v185, v126, v7);
                v193 = v151;
                if (v153 == 1)
                {
                  v152 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v126, v7, v128, 4);
                }

                v87 = v152;
                v86 = v153;

                v7 = v192;
                if (!v86)
                {
                  goto LABEL_136;
                }

                goto LABEL_138;
              }

              goto LABEL_137;
            }

LABEL_128:
            *(v129 + 8 * v143) = v145 | v144;
            *(v146 + v142) = v87;
            v148 = *(v128 + 16);
            v74 = __OFADD__(v148, 1);
            v149 = v148 + 1;
            if (!v74)
            {
              *(v128 + 16) = v149;
              goto LABEL_130;
            }

LABEL_176:
            __break(1u);
LABEL_177:
            isStackAllocationSafe = String.UTF8View._foreignCount()();
LABEL_143:
            v155 = 3 * isStackAllocationSafe;
            if ((isStackAllocationSafe * 3) >> 64 != (3 * isStackAllocationSafe) >> 63)
            {
              __break(1u);
LABEL_179:
              v183 = v112;
              isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
              if ((isStackAllocationSafe & 1) == 0)
              {
                v184 = swift_slowAlloc();
                specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v184, v183, v87, v86, &v222);
                MEMORY[0x1865D2690](v184, -1, -1);

                if (v222)
                {
                  goto LABEL_105;
                }

                goto LABEL_149;
              }

LABEL_146:
              MEMORY[0x1EEE9AC00](isStackAllocationSafe);
              v157 = &v190[-v156];
              if (String._fileSystemRepresentation(into:)(&v190[-v156], v158, v87, v86))
              {
                v236 = 0u;
                v237[0] = 0u;
                v234 = 0u;
                v235 = 0u;
                v232 = 0u;
                v233 = 0u;
                v230 = 0u;
                v231 = 0u;
                v229 = 0u;
                if (!lstat(v157, &v229))
                {
                  v166 = WORD2(v229);
                  v167 = S_IFMT.getter() & v166;
                  LOWORD(v166) = S_IFDIR.getter();

                  if (v167 == v166)
                  {
                    goto LABEL_105;
                  }

                  goto LABEL_149;
                }
              }

LABEL_148:

              goto LABEL_149;
            }

            if (v155 >= -1)
            {
              v112 = v155 + 1;
              if (v155 < 1024)
              {
                goto LABEL_146;
              }

              goto LABEL_179;
            }

            __break(1u);
            goto LABEL_183;
          }
        }

        swift_unknownObjectRelease();
      }

      v124 = v24;
      v125 = v22;
      goto LABEL_118;
    }

    v82 = String._droppingTrailingSlashes.getter(v24, v22);
    v7 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v84 = static _SetStorage.allocate(capacity:)();
    v85 = v84 + 56;
    v86 = *(v84 + 40);
    v87 = byte_1EEED3AF0;
    v88 = MEMORY[0x1865CD020](v86, byte_1EEED3AF0, 1);
    v89 = -1 << *(v84 + 32);
    v90 = v88 & ~v89;
    v91 = v90 >> 6;
    v92 = *(v84 + 56 + 8 * (v90 >> 6));
    v93 = 1 << v90;
    v94 = *(v84 + 48);
    if (((1 << v90) & v92) != 0)
    {
      v95 = ~v89;
      while (*(v94 + v90) != v87)
      {
        v90 = (v90 + 1) & v95;
        v91 = v90 >> 6;
        v92 = *(v85 + 8 * (v90 >> 6));
        v93 = 1 << v90;
        if (((1 << v90) & v92) == 0)
        {
          goto LABEL_89;
        }
      }
    }

    else
    {
LABEL_89:
      *(v85 + 8 * v91) = v93 | v92;
      *(v94 + v90) = v87;
      v96 = *(v84 + 16);
      v74 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v74)
      {
        goto LABEL_175;
      }

      *(v84 + 16) = v97;
    }

    v87 = byte_1EEED3AF1;
    v98 = MEMORY[0x1865CD020](v86, byte_1EEED3AF1, 1);
    v99 = -1 << *(v84 + 32);
    v100 = v98 & ~v99;
    v101 = v100 >> 6;
    v102 = *(v85 + 8 * (v100 >> 6));
    v103 = 1 << v100;
    v104 = *(v84 + 48);
    if (((1 << v100) & v102) != 0)
    {
      v105 = ~v99;
      while (*(v104 + v100) != v87)
      {
        v100 = (v100 + 1) & v105;
        v101 = v100 >> 6;
        v102 = *(v85 + 8 * (v100 >> 6));
        v103 = 1 << v100;
        if (((1 << v100) & v102) == 0)
        {
          goto LABEL_95;
        }
      }

LABEL_97:
      v108 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v108 = v82 & 0xFFFFFFFFFFFFLL;
      }

      if (v108)
      {
        *&v229 = v82;
        *(&v229 + 1) = v7;
        MEMORY[0x1EEE9AC00](v98);
        v186 = &v229;
        v187 = v84;
        v188 = 4;
        v109 = v193;
        v110 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v185, v82, v7);
        v193 = v109;
        if (v111 == 1)
        {
          v110 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v82, v7, v84, 4);
        }

        v87 = v110;
        v86 = v111;

        v7 = v192;
        if (!v86)
        {
LABEL_136:
          v87 = 0;
          v86 = 0xE000000000000000;
        }

LABEL_138:
        if ((v86 & 0x2000000000000000) != 0)
        {
          isStackAllocationSafe = HIBYTE(v86) & 0xF;
        }

        else
        {
          isStackAllocationSafe = v87 & 0xFFFFFFFFFFFFLL;
        }

        if (!isStackAllocationSafe)
        {
          goto LABEL_148;
        }

        if ((v86 & 0x1000000000000000) == 0)
        {
          goto LABEL_143;
        }

        goto LABEL_177;
      }

LABEL_137:

      v87 = 0;
      v86 = 0xE000000000000000;
      v7 = v192;
      goto LABEL_138;
    }

LABEL_95:
    *(v85 + 8 * v101) = v103 | v102;
    *(v104 + v100) = v87;
    v106 = *(v84 + 16);
    v74 = __OFADD__(v106, 1);
    v107 = v106 + 1;
    if (!v74)
    {
      *(v84 + 16) = v107;
      goto LABEL_97;
    }

LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (a3)
  {
    goto LABEL_149;
  }

LABEL_105:
  if ((specialized BidirectionalCollection.last.getter(v24, v22) & 0x1FF) != 0x2F)
  {
    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

LABEL_149:
  a4 = &v217;
  a3 = v7;

  a5 = &v222;
  specialized URLComponents._URLComponents.init(parseInfo:)(v159, &v222);
  v7 = v222;
  v195 = *&v223[1];
  v196 = v223[5];
  v219 = v224;
  v220 = v225;
  v221[0] = *v226;
  *(v221 + 9) = *&v226[9];
  v217 = *&v223[7];
  v218 = *&v223[23];
  v216 = v227;
  v214 = *&v226[41];
  v215 = *&v226[57];
  v24 = v197;
  v21 = v198;
  if ((v198 & 0x1000000000000000) == 0)
  {
    if ((v198 & 0x2000000000000000) != 0)
    {
      v161 = HIBYTE(v198) & 0xF;
      *&v229 = v197;
      *(&v229 + 1) = v198 & 0xFFFFFFFFFFFFFFLL;
      v160 = &v229;
    }

    else
    {
      if ((v197 & 0x1000000000000000) == 0)
      {
        goto LABEL_168;
      }

      v160 = ((v198 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v161 = v197 & 0xFFFFFFFFFFFFLL;
    }

    while (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v160, v161, 0x10u, 1))
    {
LABEL_167:
      v189 = 0;
      v188 = 1001;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_168:
      v160 = _StringObject.sharedUTF8.getter();
    }

    goto LABEL_155;
  }

LABEL_165:
  *&v229 = v24;
  *(&v229 + 1) = v21;
  v193 = lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v178 = String._bridgeToObjectiveCImpl()();

  v179 = [v178 _fastCharacterContents];
  v180 = v178;
  if (v179)
  {
    *&v229 = v24;
    *(&v229 + 1) = v21;
    StringProtocol._ephemeralString.getter();
    v181 = String._bridgeToObjectiveCImpl()();

    v182 = [v181 length];
    swift_unknownObjectRelease();
    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v179, v182, 0x10u, 1))
    {
      goto LABEL_167;
    }
  }

  else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v24, v21, 0x10u, 1) & 1) == 0)
  {
    goto LABEL_167;
  }

LABEL_155:
  v228 = *(a5 + 13);

  outlined destroy of TermOfAddress?(&v228, &_sSSSgMd);
  *v201 = v7;
  v201[8] = 0;
  *&v201[9] = v195;
  v201[13] = v196;
  v201[14] = 0;
  *&v201[47] = v219;
  *&v201[63] = v220;
  *&v201[79] = v221[0];
  *&v201[88] = *(a4 + 73);
  *&v201[15] = v217;
  *&v201[31] = v218;
  *&v201[104] = v24;
  *&v202[0] = v21;
  *(v202 + 8) = v214;
  *(&v202[1] + 8) = v215;
  WORD4(v202[2]) = v216;
  v231 = *&v201[32];
  v232 = *&v201[48];
  v233 = *&v201[64];
  v234 = *&v201[80];
  v229 = *v201;
  v230 = *&v201[16];
  v235 = *&v201[96];
  v236 = v202[0];
  v237[0] = v202[1];
  *(v237 + 10) = *(&v202[1] + 10);
  outlined init with copy of URLComponents(v201, &v203);
  v162 = URLComponents._URLComponents._uncheckedString(original:)(0);
  outlined destroy of URLComponents(v201);
  v200 = *(a3 + 24);
  swift_unknownObjectRetain();
  v163 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v162._countAndFlagsBits, v162._object, &v200);
  v206 = v219;
  v207 = v220;
  *v208 = v221[0];
  *&v208[9] = *(a4 + 73);
  *&v204[7] = v217;
  v205 = v218;
  v211 = v214;
  v203 = v7;
  v204[0] = 0;
  *&v204[1] = v195;
  v204[5] = v196;
  v204[6] = 0;
  v209 = v24;
  v210 = v21;
  v212 = v215;
  v213 = v216;
  outlined destroy of URLComponents(&v203);

  v164 = &protocol witness table for _SwiftURL;
  if (!v163)
  {
    v164 = 0;
  }

  v165 = v194;
  *v194 = v163;
  v165[1] = v164;
}

id NSKeyValueObservation.Helper.init(object:keyPath:options:callback:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_unsafeUnretainedObject;
  *&v5[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_unsafeUnretainedObject] = 0;
  v9 = OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_lock;
  v10 = swift_slowAlloc();
  *v10 = 0;
  *&v5[v9] = v10;
  if (one-time initialization token for swizzler != -1)
  {
    swift_once();
  }

  v39 = a2;
  v40 = _bridgeKeyPathToString(_:)();
  v12 = v11;
  if (one-time initialization token for observationInfoGetter != -1)
  {
    swift_once();
  }

  v13 = static NSKeyValueObservation.Helper.observationInfoGetter;
  v14 = [a1 methodForSelector_];
  v15 = objc_opt_self();
  v16 = [v15 instanceMethodForSelector_];
  if (v14)
  {
    if (!v16 || v14 != v16)
    {
      goto LABEL_17;
    }
  }

  else if (v16)
  {
    goto LABEL_17;
  }

  if (one-time initialization token for observationInfoSetter != -1)
  {
    swift_once();
  }

  v17 = static NSKeyValueObservation.Helper.observationInfoSetter;
  v18 = [a1 methodForSelector_];
  v19 = [v15 instanceMethodForSelector_];
  if (v18)
  {
    if (v19 && v18 == v19)
    {
      goto LABEL_15;
    }
  }

  else if (!v19)
  {
LABEL_15:
    swift_unknownObjectWeakAssign();
    goto LABEL_18;
  }

LABEL_17:
  *&v5[v8] = a1;
LABEL_18:
  v20 = &v5[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_path];
  *v20 = v40;
  v20[1] = v12;
  v21 = &v5[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_callback];
  *v21 = a4;
  *(v21 + 1) = a5;
  v46.receiver = v5;
  v46.super_class = type metadata accessor for NSKeyValueObservation.Helper();

  v22 = objc_msgSendSuper2(&v46, sel_init);
  objc_setAssociatedObject(a1, v22, v22, 0x301);
  v23 = type metadata accessor for __KVOKeyPathBridgeMachinery.BridgeKey();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtCC10FoundationP33_6DA0945A07226B3278459E9368612FF427__KVOKeyPathBridgeMachinery9BridgeKey_value];
  *v25 = v40;
  v25[1] = v12;
  v45.receiver = v24;
  v45.super_class = v23;

  v26 = objc_msgSendSuper2(&v45, sel_init);
  v27 = objc_opt_self();
  v28 = [v27 currentThread];
  v29 = [v28 threadDictionary];

  v30 = v26;
  v31 = [v29 objectForKeyedSubscript_];

  if (v31)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44[0] = v42;
  v44[1] = v43;
  v32 = [v27 currentThread];
  v33 = [v32 threadDictionary];

  v34 = v30;
  [v33 setObject:v39 forKeyedSubscript:v34];

  v35 = String._bridgeToObjectiveCImpl()();

  [a1 addObserver:v22 forKeyPath:v35 options:a3 context:0];
  swift_unknownObjectRelease();
  $defer #1 () in static __KVOKeyPathBridgeMachinery._withBridgeableKeyPath(from:to:block:)(v34, v44);

  outlined destroy of TermOfAddress?(v44, &_sypSgMd);

  return v22;
}

objc_method *closure #1 in variable initialization expression of static NSKeyValueObservation.Helper.swizzler()
{
  v0 = String._bridgeToObjectiveCImpl()();
  v1 = NSClassFromString(v0);
  swift_unknownObjectRelease();
  if (v1)
  {
    swift_getObjCClassMetadata();
    if (swift_dynamicCastTypeToObjCProtocolConditional())
    {
      [swift_getObjCClassFromMetadata() _noteProcessHasUsedKVOSwiftOverlay];
    }
  }

  type metadata accessor for NSKeyValueObservation.Helper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = class_getInstanceMethod(ObjCClassFromMetadata, sel__swizzle_me_observeValueForKeyPath_of_change_context_);
  if (result)
  {
    v4 = result;
    Implementation = method_getImplementation(result);
    TypeEncoding = method_getTypeEncoding(v4);
    return class_addMethod(ObjCClassFromMetadata, sel_observeValueForKeyPath_ofObject_change_context_, Implementation, TypeEncoding);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _bridgeKeyPathToString(_:)()
{
  result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v1)
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

uint64_t one-time initialization function for observationInfoGetter()
{
  result = Selector.init(_:)();
  static NSKeyValueObservation.Helper.observationInfoGetter = result;
  return result;
}

id _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = MEMORY[0x1E69E77B0];
  v12 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v26 - v15, v16, v12, v13);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  swift_dynamicCast();
  v17 = v28;
  v18 = swift_allocObject();
  v18[2] = v12;
  v18[3] = *(v10 + *v11 + 8);
  v18[4] = a5;
  v18[5] = a3;
  v18[6] = a4;
  v19 = type metadata accessor for NSKeyValueObservation();
  v20 = objc_allocWithZone(v19);
  swift_unknownObjectWeakInit();
  v27.receiver = v20;
  v27.super_class = v19;

  v21 = objc_msgSendSuper2(&v27, sel_init);
  v22 = objc_autoreleasePoolPush();
  objc_allocWithZone(type metadata accessor for NSKeyValueObservation.Helper());
  v23 = v17;

  v24 = NSKeyValueObservation.Helper.init(object:keyPath:options:callback:)(v23, a1, a2, partial apply for closure #1 in _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:), v18);
  swift_unknownObjectWeakAssign();

  objc_autoreleasePoolPop(v22);

  return v21;
}

uint64_t sub_18080C18C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t $defer #1 () in static __KVOKeyPathBridgeMachinery._withBridgeableKeyPath(from:to:block:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentThread];
  v5 = [v4 threadDictionary];

  outlined init with copy of Any?(a2, v18);
  v6 = v19;
  if (!v19)
  {
    v14 = 0;
    goto LABEL_7;
  }

  v7 = __swift_project_boxed_opaque_existential_1(v18, v19);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = *(v8 + 16);
  v12(v17 - v11, v10);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v17[1] = v17;
    v16 = MEMORY[0x1EEE9AC00](result);
    (v12)(v17 - v11, v17 - v11, v6, v16);
    v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v8 + 8))(v17 - v11, v6);
    goto LABEL_5;
  }

  if (v9 == 8)
  {
    v14 = *(v17 - v11);
    v15 = *(v8 + 8);
    swift_unknownObjectRetain();
    v15(v17 - v11, v6);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_7:
    [v5 setObject:v14 forKeyedSubscript:a1];

    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t _CalendarGregorian.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

char *TimeZoneCache.State.bridgedFixed(_:)(uint64_t a1, unint64_t a2)
{
  v6 = v2;
  v9 = *(v2 + 80);
  if (*(v9 + 16))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v11)
    {
      v3 = *(*(v9 + 56) + 8 * v10);
      v12 = v3;
      return v3;
    }
  }

  v13 = *(v6 + 32);
  if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v13 + 56);
    v18 = type metadata accessor for _NSSwiftTimeZone();
    v104 = *(v17 + 16 * v16);
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____NSSwiftTimeZone_timeZone] = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
    v20 = swift_allocObject();
    *(v20 + 32) = 0;
    *(v20 + 16) = xmmword_18122E880;
    *&v19[OBJC_IVAR____NSSwiftTimeZone_lock] = v20;
    v107.receiver = v19;
    v107.super_class = v18;
    v21 = v104;
    swift_unknownObjectRetain_n();
    v3 = objc_msgSendSuper2(&v107, sel_init);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(v6 + 80);
    v22 = v109;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    v25 = *(v22 + 16);
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (!v27)
    {
      LOBYTE(v4) = v24;
      if (*(v22 + 24) >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v100 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16_NSSwiftTimeZoneCGMd);
          v84 = static _DictionaryStorage.copy(original:)();
          v29 = v84;
          if (*(v22 + 16))
          {
            result = (v84 + 64);
            __srcb = (v22 + 64);
            v85 = ((1 << *(v29 + 32)) + 63) >> 6;
            if (v29 != v22 || result >= &__srcb[8 * v85])
            {
              result = memmove(result, __srcb, 8 * v85);
            }

            v86 = 0;
            *(v29 + 16) = *(v22 + 16);
            v87 = 1 << *(v22 + 32);
            v88 = -1;
            if (v87 < 64)
            {
              v88 = ~(-1 << v87);
            }

            v97 = (v87 + 63) >> 6;
            v89 = v88 & *(v22 + 64);
            if (v89)
            {
              do
              {
LABEL_80:
                v106 = (v89 - 1) & v89;
                v91 = __clz(__rbit64(v89)) | (v86 << 6);
                v92 = (*(v22 + 48) + 16 * v91);
                v93 = v92[1];
                v94 = *(*(v22 + 56) + 8 * v91);
                v95 = (*(v29 + 48) + 16 * v91);
                *v95 = *v92;
                v95[1] = v93;
                *(*(v29 + 56) + 8 * v91) = v94;

                result = v94;
                v89 = v106;
              }

              while (v106);
            }

            v90 = v86;
            while (1)
            {
              v86 = v90 + 1;
              if (__OFADD__(v90, 1))
              {
                goto LABEL_89;
              }

              if (v86 >= v97)
              {
                break;
              }

              v89 = *&__srcb[8 * v86];
              ++v90;
              if (v89)
              {
                goto LABEL_80;
              }
            }
          }

          v23 = v100;
          if (v4)
          {
LABEL_23:
            v41 = *(v29 + 56);
            v42 = *(v41 + 8 * v23);
            *(v41 + 8 * v23) = v3;
            swift_unknownObjectRelease();

LABEL_85:
            *(v6 + 80) = v29;
            return v3;
          }

LABEL_83:
          specialized _NativeDictionary._insert(at:key:value:)(v23, a1, a2, v3, v29);

          swift_unknownObjectRelease();
          goto LABEL_84;
        }

        v29 = v22;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
        v29 = v109;
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
        if ((v4 & 1) != (v30 & 1))
        {
          goto LABEL_46;
        }
      }

      if (v4)
      {
        goto LABEL_23;
      }

      goto LABEL_83;
    }
  }

  else
  {
    type metadata accessor for _TimeZoneICU();
    swift_allocObject();

    v31 = _TimeZoneICU.init(identifier:)(a1, a2);
    if (!v31)
    {
      return 0;
    }

    v21 = v31;

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(v6 + 32);
    v4 = v109;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    v33 = *(v109 + 2);
    v34 = (v32 & 1) == 0;
    v27 = __OFADD__(v33, v34);
    v35 = v33 + v34;
    if (!v27)
    {
      v3 = v32;
      if (*(v109 + 3) >= v35)
      {
        if ((v22 & 1) == 0)
        {
          goto LABEL_26;
        }

        v36 = v109;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v22);
        v36 = v109;
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
        if ((v3 & 1) != (v37 & 1))
        {
          goto LABEL_46;
        }
      }

      if ((v3 & 1) == 0)
      {
LABEL_42:
        specialized _NativeDictionary._insert(at:key:value:)(v23, a1, a2, v21, v36);

        goto LABEL_43;
      }

LABEL_19:
      v38 = v23;
      v39 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneICU and conformance _TimeZoneICU, type metadata accessor for _TimeZoneICU);
      v40 = (*(v36 + 56) + 16 * v38);
      *v40 = v21;
      v40[1] = v39;
      swift_unknownObjectRelease();
LABEL_43:
      *(v6 + 32) = v36;
      v61 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneICU and conformance _TimeZoneICU, type metadata accessor for _TimeZoneICU);
      v62 = type metadata accessor for _NSSwiftTimeZone();
      v4 = objc_allocWithZone(v62);
      v63 = &v4[OBJC_IVAR____NSSwiftTimeZone_timeZone];
      *v63 = v21;
      v63[1] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
      v64 = swift_allocObject();
      *(v64 + 32) = 0;
      *(v64 + 16) = xmmword_18122E880;
      *&v4[OBJC_IVAR____NSSwiftTimeZone_lock] = v64;
      v108.receiver = v4;
      v108.super_class = v62;

      v3 = objc_msgSendSuper2(&v108, sel_init);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = *(v6 + 80);
      v22 = v109;
      v65 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      v67 = *(v22 + 16);
      v68 = (v66 & 1) == 0;
      v27 = __OFADD__(v67, v68);
      v69 = v67 + v68;
      if (v27)
      {
        __break(1u);
LABEL_52:
        v99 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16_NSSwiftTimeZoneCGMd);
        v72 = static _DictionaryStorage.copy(original:)();
        v29 = v72;
        if (!*(v22 + 16))
        {
LABEL_66:

          v65 = v99;
          if (v4)
          {
            goto LABEL_50;
          }

LABEL_67:
          specialized _NativeDictionary._insert(at:key:value:)(v65, a1, a2, v3, v29);

LABEL_84:
          v42 = v3;
          goto LABEL_85;
        }

        result = (v72 + 64);
        __srca = (v22 + 64);
        v73 = ((1 << *(v29 + 32)) + 63) >> 6;
        if (v29 != v22 || result >= &__srca[8 * v73])
        {
          result = memmove(result, __srca, 8 * v73);
        }

        v74 = 0;
        *(v29 + 16) = *(v22 + 16);
        v75 = 1 << *(v22 + 32);
        v76 = -1;
        if (v75 < 64)
        {
          v76 = ~(-1 << v75);
        }

        v96 = (v75 + 63) >> 6;
        v77 = v76 & *(v22 + 64);
        if (v77)
        {
          do
          {
LABEL_64:
            v105 = (v77 - 1) & v77;
            v79 = __clz(__rbit64(v77)) | (v74 << 6);
            v80 = (*(v22 + 48) + 16 * v79);
            v81 = v80[1];
            v82 = *(*(v22 + 56) + 8 * v79);
            v83 = (*(v29 + 48) + 16 * v79);
            *v83 = *v80;
            v83[1] = v81;
            *(*(v29 + 56) + 8 * v79) = v82;

            result = v82;
            v77 = v105;
          }

          while (v105);
        }

        v78 = v74;
        while (1)
        {
          v74 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            goto LABEL_88;
          }

          if (v74 >= v96)
          {
            goto LABEL_66;
          }

          v77 = *&__srca[8 * v74];
          ++v78;
          if (v77)
          {
            goto LABEL_64;
          }
        }
      }

      LOBYTE(v4) = v66;
      if (*(v22 + 24) >= v69)
      {
LABEL_47:
        if (isUniquelyReferenced_nonNull_native)
        {
          v29 = v22;
LABEL_49:
          if (v4)
          {
LABEL_50:
            v71 = *(v29 + 56);
            v42 = *(v71 + 8 * v65);
            *(v71 + 8 * v65) = v3;

            goto LABEL_85;
          }

          goto LABEL_67;
        }

        goto LABEL_52;
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native);
      v29 = v109;
      v65 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if ((v4 & 1) == (v70 & 1))
      {
        goto LABEL_49;
      }

LABEL_46:
      v65 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_47;
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  v98 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation17_TimeZoneProtocol_pGMd);
  v43 = static _DictionaryStorage.copy(original:)();
  v36 = v43;
  if (!*(v4 + 2))
  {
LABEL_41:

    v23 = v98;
    if ((v3 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_19;
  }

  result = (v43 + 64);
  __src = v4 + 64;
  v45 = ((1 << *(v36 + 32)) + 63) >> 6;
  if (v36 != v4 || result >= &__src[8 * v45])
  {
    result = memmove(result, __src, 8 * v45);
  }

  v46 = 0;
  *(v36 + 16) = *(v4 + 2);
  v47 = 1 << v4[32];
  v48 = *(v4 + 8);
  v49 = -1;
  if (v47 < 64)
  {
    v49 = ~(-1 << v47);
  }

  v50 = v49 & v48;
  v51 = (v47 + 63) >> 6;
  if ((v49 & v48) != 0)
  {
    do
    {
      v52 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
LABEL_39:
      v55 = 16 * (v52 | (v46 << 6));
      v56 = (*(v4 + 6) + v55);
      v58 = *v56;
      v57 = v56[1];
      v59 = *(*(v4 + 7) + v55);
      v60 = (*(v36 + 48) + v55);
      *v60 = v58;
      v60[1] = v57;
      *(*(v36 + 56) + v55) = v59;

      result = swift_unknownObjectRetain();
    }

    while (v50);
  }

  v53 = v46;
  while (1)
  {
    v46 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v46 >= v51)
    {
      goto LABEL_41;
    }

    v54 = *&__src[8 * v46];
    ++v53;
    if (v54)
    {
      v52 = __clz(__rbit64(v54));
      v50 = (v54 - 1) & v54;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

char *closure #1 in TimeZoneCache.bridgedFixed(_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, char **a3@<X8>)
{
  result = TimeZoneCache.State.bridgedFixed(_:)(a1, a2);
  *a3 = result;
  return result;
}

char *@objc static NSTimeZone._timeZoneWith(name:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  if (one-time initialization token for cache != -1)
  {
    v7 = v3;
    swift_once();
    v3 = v7;
  }

  v4 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v4 + 30);
  closure #1 in TimeZoneCache.bridgedFixed(_:)partial apply(&v8);
  os_unfair_lock_unlock(v4 + 30);
  v5 = v8;

  return v5;
}

void __iop_setCompletionBlock_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  os_unfair_lock_lock((*(a1 + 40) + 224));
  v3 = *(a1 + 40);
  v4 = *(v3 + 56);
  if (*(a1 + 32) == v4)
  {

    v5 = 0;
    v3 = *(a1 + 40);
  }

  else
  {
    *(v3 + 56) = v2;
    v5 = v4;
  }

  os_unfair_lock_unlock((v3 + 224));
}

uint64_t _NSFileManagerBridge.removeItem(at:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 144))(ObjectType, v1);
  v4 = *(v1 + 240);
  if ((v3 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v4(ObjectType, v1);
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveCImpl()();

    v16 = (*(v1 + 432))(ObjectType, v1);
    swift_unknownObjectRelease();
    v17 = [v14 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
LABEL_9:
    v17;
    swift_unknownObjectRelease();

    return swift_willThrow();
  }

  v5 = (v4)(ObjectType, v1);
  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    swift_unknownObjectRetain();
    v4(ObjectType, v1);
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveCImpl()();

    v16 = (*(v1 + 432))(ObjectType, v1);
    swift_unknownObjectRelease();
    v17 = [v18 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    goto LABEL_9;
  }

  v9 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    v12 = v11;
    specialized String.withFileSystemRepresentation<A>(_:)(v9, v7, v9, v7, v11);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void newJSONString(void *a1, int a2, void *a3)
{
  v207 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v6 = *a1;
  v7 = v6[v5];
  if (v7 == 34)
  {
    v8 = 0;
    v9 = 0;
    ++v5;
    goto LABEL_16;
  }

  v10 = a1[1] & 8;
  v11 = v7 != 39 || v10 == 0;
  if (!v11)
  {
    v8 = 0;
    ++v5;
    v9 = 1;
    goto LABEL_16;
  }

  if (a2 != 1 || !v10)
  {
    if (a3)
    {
      v66 = a1[6];
      v30 = v5 >= v66;
      v67 = v5 - v66;
      if (v30)
      {
        v68 = v67;
      }

      else
      {
        v68 = 0;
      }

      v69 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"String without surrounding quotes", a1[5], v68];
      v70 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
      v205 = @"NSDebugDescription";
      v206 = @"NSJSONSerializationErrorIndex";
      v200 = v69;
      v201 = v70;
      *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
    }

    return;
  }

  if (((v7 & 0xDF) - 65) >= 0x1Au && (v6[v5] - 36 > 0x3B || ((1 << (v7 - 36)) & 0x900000000000001) == 0))
  {
    if (v6[v5] > -65)
    {
      v102 = v5;
    }

    else
    {
      v102 = utf8_back1SafeBody(v6, 0, v5);
      v6 = *a1;
    }

    v106 = v6[v102];
    v107 = v6[v102];
    if ((v106 & 0x80000000) == 0)
    {
LABEL_228:
      if (_MergedGlobals_141 != -1)
      {
        dispatch_once(&_MergedGlobals_141, &__block_literal_global_67);
      }

      if (!MEMORY[0x1865D3530](qword_1ED43FE50, v107))
      {
        if (a3)
        {
          v108 = a1[3];
          v109 = a1[6];
          v30 = v108 >= v109;
          v110 = v108 - v109;
          if (v30)
          {
            v111 = v110;
          }

          else
          {
            v111 = 0;
          }

          v112 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Disallowed first character in JSON5 object key", a1[5], v111];
          v113 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
          v205 = @"NSDebugDescription";
          v206 = @"NSJSONSerializationErrorIndex";
          v200 = v112;
          v201 = v113;
          *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
        }

        return;
      }

      goto LABEL_15;
    }

    v127 = v102;
    v128 = v102 + 1;
    v129 = a1[2];
    if (v129 != v128)
    {
      if (v107 < 0xE0)
      {
        if (v107 < 0xC2)
        {
          goto LABEL_250;
        }

        v138 = v107 & 0x1F;
      }

      else
      {
        if (v107 > 0xEF)
        {
          if (v107 > 0xF4)
          {
            goto LABEL_250;
          }

          v128 = v6[v128];
          if (((_writeJSONBoolean_falseData[(v128 >> 4) + 5] >> (v107 + 16)) & 1) == 0)
          {
            goto LABEL_250;
          }

          v140 = v127 + 2;
          if (v129 == v127 + 2)
          {
            goto LABEL_250;
          }

          v137 = v6[v140] ^ 0x80;
          if (v137 > 0x3F)
          {
            goto LABEL_250;
          }

          LODWORD(v136) = v128 & 0x3F | ((v107 - 240) << 6);
          LODWORD(v128) = v140;
        }

        else
        {
          v136 = v106 & 0xF;
          if (((a00000000000000[v136] >> (v6[v128] >> 5)) & 1) == 0)
          {
            goto LABEL_250;
          }

          v137 = v6[v128] & 0x3F;
        }

        LODWORD(v128) = v128 + 1;
        if (v129 == v128)
        {
          goto LABEL_250;
        }

        v128 = v128;
        v138 = v137 | (v136 << 6);
      }

      v139 = v6[v128] ^ 0x80;
      if (v139 <= 0x3F)
      {
        v107 = v139 | (v138 << 6);
        goto LABEL_228;
      }
    }

LABEL_250:
    if (a3)
    {
      v130 = a1[3];
      v131 = a1[6];
      v30 = v130 >= v131;
      v132 = v130 - v131;
      if (v30)
      {
        v133 = v132;
      }

      else
      {
        v133 = 0;
      }

      v134 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unparseable UTF8 character", a1[5], v133];
      v135 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
      v205 = @"NSDebugDescription";
      v206 = @"NSJSONSerializationErrorIndex";
      v200 = v134;
      v201 = v135;
      *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
    }

    return;
  }

LABEL_15:
  v9 = 0;
  v8 = 1;
LABEL_16:
  v13 = a1[2];
  if (v13 <= v5)
  {
    if (a3)
    {
      v28 = a1[3];
      v29 = a1[6];
      v30 = v28 >= v29;
      v31 = v28 - v29;
      if (v30)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during string parse", a1[5], v32];
      v34 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
      v205 = @"NSDebugDescription";
      v206 = @"NSJSONSerializationErrorIndex";
      v200 = v33;
      v201 = v34;
      *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
    }
  }

  else
  {
    v14 = 0;
    v15 = *a1;
    v16 = -2128831035;
    v17 = v5;
    while (1)
    {
      v18 = v15[v17];
      if (v18 < 0x20)
      {
        break;
      }

      v16 = 16777619 * (v16 ^ v18);
      if (v18 == 92)
      {
        if (v13 <= v17 + 1)
        {
          goto LABEL_50;
        }

        v19 = v15[v17 + 1];
        if (v19 == 117)
        {
          v20 = v17 + 6;
LABEL_51:
          v14 = 1;
          goto LABEL_52;
        }

        if ((a1[1] & 8) == 0)
        {
LABEL_50:
          v20 = v17 + 2;
          goto LABEL_51;
        }

        switch(v19)
        {
          case 10:
            v20 = v17 + 2;
            break;
          case 13:
            v20 = v17 + 2;
            if (v13 > v17 + 2 && v15[v20] == 10)
            {
              v20 = v17 + 3;
            }

            break;
          case 120:
            v20 = v17 + 4;
            goto LABEL_51;
          default:
            goto LABEL_50;
        }

        ++a1[5];
        a1[6] = v20;
        goto LABEL_51;
      }

      if (v18 == 39)
      {
        v21 = v9;
      }

      else
      {
        v21 = 0;
      }

      v23 = v7 == 34 && v18 == 34;
      if (v18 == 58)
      {
        v24 = v8;
      }

      else
      {
        v24 = 0;
      }

      if ((v24 & 1) != 0 || (v21 & 1) != 0 || v23)
      {
        goto LABEL_74;
      }

      v25 = (v18 & 0x7F) == 0x20 ? v8 : 0;
      if (v25)
      {
        goto LABEL_74;
      }

      v11 = v18 == 47;
      v26 = v8 ^ 1;
      v20 = v17 + 1;
      if (!v11)
      {
        v26 = 1;
      }

      if ((v26 & 1) == 0 && v13 > v20)
      {
        v27 = v15[v20];
        if (v27 == 42 || v27 == 47)
        {
          goto LABEL_74;
        }
      }

LABEL_52:
      v17 = v20;
      if (v13 <= v20)
      {
        if (a3)
        {
          v71 = a1[3];
          v72 = a1[6];
          v30 = v71 >= v72;
          v73 = v71 - v72;
          if (v30)
          {
            v74 = v73;
          }

          else
          {
            v74 = 0;
          }

          v75 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unterminated string", a1[5], v74];
          v76 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
          v205 = @"NSDebugDescription";
          v206 = @"NSJSONSerializationErrorIndex";
          v200 = v75;
          v201 = v76;
          *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
        }

        return;
      }
    }

    if (v18 == 10)
    {
      v35 = v8;
    }

    else
    {
      v35 = 0;
    }

    v36 = v17;
    if (v35)
    {
LABEL_73:
      ++a1[5];
      a1[6] = v36;
LABEL_74:
      if (v17 == v5)
      {
        a1[3] = v5 + 1;
        if ((a1[1] & 2) != 0)
        {
          v37 = NSMutableString;
        }

        else
        {
          v37 = NSString;
        }

        v77 = objc_alloc_init(v37);
        return;
      }

      v197 = v17 - 1;
      v38 = v17 - v5;
      v196 = (a1 + 7);
      v39 = &a1[4 * v16 + 7];
      if (*(v39 + 24) == v16 && *(v39 + 8) == v38 && !memcmp(*v39, &v15[v5], v17 - v5))
      {
        v103 = *(v39 + 16);
        if (v103)
        {
          v104 = 1;
          if (!v8)
          {
            v104 = 2;
          }

          a1[3] = v197 + v104;
          if ((a1[1] & 2) != 0)
          {

            [v103 mutableCopy];
          }

          else
          {

            v105 = v103;
          }

          return;
        }
      }

      if (v14)
      {
        v195 = a3;
        v40 = malloc_type_malloc(v17 - v5, 0x100004077774924uLL);
        if (v5 < v17)
        {
          v41 = v17 - v5;
          v42 = 0;
          v43 = v5;
          while (1)
          {
            if (v42 >= v41)
            {
              if (2 * v41 <= 6)
              {
                v41 = 6;
              }

              else
              {
                v41 *= 2;
              }

              v200 = 0;
              v201 = &v200;
              v202 = 0x2020000000;
              v203 = 0;
              v198[0] = MEMORY[0x1E69E9820];
              v198[1] = 3221225472;
              v198[2] = __newJSONString_block_invoke_2;
              v198[3] = &unk_1E69F4BA8;
              v198[4] = &v200;
              v44 = MEMORY[0x1865CFE30](v40, v41, 3498767097, v198);
              if (LOBYTE(v201[3].super.super.isa) == 1)
              {
                if (v195)
                {
                  v114 = a1[3];
                  v115 = a1[6];
                  v116 = [NSString alloc];
                  v117 = v114 - v115;
                  if (v114 < v115)
                  {
                    v117 = 0;
                  }

                  v118 = [(NSString *)v116 initWithFormat:@"%@ around line %lu, column %lu.", @"Memory exhausted during parse of string.", a1[5], v117];
                  v119 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                  v204[0] = @"NSDebugDescription";
                  v204[1] = @"NSJSONSerializationErrorIndex";
                  v205 = v118;
                  v206 = v119;
                  *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v205 forKeys:v204 count:2]);
                }

                _Block_object_dispose(&v200, 8);
                return;
              }

              v40 = v44;
              _Block_object_dispose(&v200, 8);
            }

            v45 = *a1;
            v46 = (*a1 + v43);
            v47 = *v46;
            if (v47 == 92)
            {
              break;
            }

            v40[v42] = v47;
LABEL_125:
            ++v42;
            if (++v43 >= v17)
            {
              goto LABEL_196;
            }
          }

          if (v43 >= v197)
          {
            if (v195)
            {
              v121 = a1 + 3;
              v120 = a1[3];
              v122 = a1[6];
              v30 = v120 >= v122;
              v123 = v120 - v122;
              if (v30)
              {
                v124 = v123;
              }

              else
              {
                v124 = 0;
              }

              v125 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unfinished control character", a1[5], v124];
              v126 = [[NSNumber alloc] initWithUnsignedInteger:*v121];
              v205 = @"NSDebugDescription";
              v206 = @"NSJSONSerializationErrorIndex";
              v200 = v125;
              v201 = v126;
              *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
            }

            goto LABEL_246;
          }

          v48 = v45[v43 + 1];
          v49 = v43 + 2;
          if (v48 > 0x65)
          {
            if (v45[v43 + 1] <= 0x71u)
            {
              if (v48 == 102)
              {
                v54 = 12;
                goto LABEL_123;
              }

              if (v48 == 110)
              {
                goto LABEL_117;
              }
            }

            else
            {
              switch(v48)
              {
                case 'r':
                  v54 = 13;
                  goto LABEL_123;
                case 't':
                  v54 = 9;
                  goto LABEL_123;
                case 'u':
                  v194 = v40;
                  v199 = 0;
                  if ((parseJSONUnicodePointAtLocation(a1, v49, v197, &v199, v195) & 1) == 0)
                  {
                    goto LABEL_308;
                  }

                  v50 = v40;
                  if ((a1[1] & 8) != 0 && !v199)
                  {
                    free(v40);
                    if (v195)
                    {
                      v141 = a1[3];
                      v142 = a1[6];
                      v30 = v141 >= v142;
                      v143 = v141 - v142;
                      if (v30)
                      {
                        v144 = v143;
                      }

                      else
                      {
                        v144 = 0;
                      }

                      v145 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unsupported escaped (unicode) null", a1[5], v144];
                      v146 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                      v205 = @"NSDebugDescription";
                      v206 = @"NSJSONSerializationErrorIndex";
                      v200 = v145;
                      v201 = v146;
                      *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
                    }

                    return;
                  }

                  if ((v199 & 0xFC00) == 0xD800)
                  {
                    if (v43 + 11 > v197)
                    {
                      a1[3] = v43;
                      if (!v195)
                      {
                        goto LABEL_247;
                      }

                      v157 = a1[6];
                      v30 = v43 >= v157;
                      v158 = v43 - v157;
                      if (v30)
                      {
                        v159 = v158;
                      }

                      else
                      {
                        v159 = 0;
                      }

                      v160 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during string parse (expected low-surrogate code point but did not find one).", a1[5], v159];
                      v161 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                      v205 = @"NSDebugDescription";
                      v206 = @"NSJSONSerializationErrorIndex";
                      v200 = v160;
                      v201 = v161;
                      *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);

                      goto LABEL_308;
                    }

                    v51 = *a1 + v43;
                    if (*(v51 + 6) != 92 || *(v51 + 7) != 117)
                    {
                      a1[3] = v43;
                      if (!v195)
                      {
                        goto LABEL_247;
                      }

                      v147 = a1[6];
                      v30 = v43 >= v147;
                      v148 = v43 - v147;
                      if (v30)
                      {
                        v149 = v148;
                      }

                      else
                      {
                        v149 = 0;
                      }

                      v150 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Missing low code point in surrogate pair", a1[5], v149];
                      v151 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                      v205 = @"NSDebugDescription";
                      v206 = @"NSJSONSerializationErrorIndex";
                      v200 = v150;
                      v201 = v151;
                      *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);

                      goto LABEL_308;
                    }

                    if ((parseJSONUnicodePointAtLocation(a1, v43 + 8, v197, &v199 + 1, v195) & 1) == 0)
                    {
                      goto LABEL_308;
                    }

                    if ((HIWORD(v199) & 0xFC00) != 0xDC00)
                    {
                      a1[3] = v43;
                      if (v195)
                      {
                        v167 = a1[6];
                        v30 = v43 >= v167;
                        v168 = v43 - v167;
                        if (v30)
                        {
                          v169 = v168;
                        }

                        else
                        {
                          v169 = 0;
                        }

                        v170 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Invalid surrogate pair in unicode escape sequence", a1[5], v169];
                        v171 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                        v205 = @"NSDebugDescription";
                        v206 = @"NSJSONSerializationErrorIndex";
                        v200 = v170;
                        v201 = v171;
                        *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
                      }

                      goto LABEL_308;
                    }

                    v192 = [[NSString alloc] initWithBytesNoCopy:&v199 length:4 encoding:2483028224 freeWhenDone:0];
                    v204[0] = 0;
                    v52 = [(NSString *)v192 getBytes:&v40[v42] maxLength:6 usedLength:v204 encoding:4 options:0 range:0 remainingRange:[(NSString *)v192 length], 0];

                    if (!v52)
                    {
                      a1[3] = v43;
                      if (v195)
                      {
                        v172 = a1[6];
                        v30 = v43 >= v172;
                        v173 = v43 - v172;
                        if (v30)
                        {
                          v174 = v173;
                        }

                        else
                        {
                          v174 = 0;
                        }

                        v175 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unable to convert hex escape sequence (with high character) to UTF8-encoded character", a1[5], v174];
                        v176 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                        v205 = @"NSDebugDescription";
                        v206 = @"NSJSONSerializationErrorIndex";
                        v200 = v175;
                        v201 = v176;
                        *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
                      }

LABEL_308:
                      v50 = v194;
                      goto LABEL_247;
                    }

                    v53 = v204[0];
                    v43 += 10;
                  }

                  else
                  {
                    v193 = [[NSString alloc] initWithBytesNoCopy:&v199 length:2 encoding:2483028224 freeWhenDone:0];
                    v204[0] = 0;
                    v65 = [(NSString *)v193 getBytes:&v40[v42] maxLength:6 usedLength:v204 encoding:4 options:0 range:0 remainingRange:[(NSString *)v193 length], 0];

                    if (!v65)
                    {
                      a1[3] = v43;
                      if (v195)
                      {
                        v162 = a1[6];
                        v30 = v43 >= v162;
                        v163 = v43 - v162;
                        if (v30)
                        {
                          v164 = v163;
                        }

                        else
                        {
                          v164 = 0;
                        }

                        v165 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unable to convert hex escape sequence (no high character) to UTF8-encoded character.", a1[5], v164];
                        v166 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                        v205 = @"NSDebugDescription";
                        v206 = @"NSJSONSerializationErrorIndex";
                        v200 = v165;
                        v201 = v166;
                        *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
                      }

                      goto LABEL_308;
                    }

                    v53 = v204[0];
                    v43 += 4;
                  }

                  v42 = v42 + v53 - 1;
                  v40 = v194;
                  goto LABEL_124;
              }
            }

LABEL_127:
            v55 = a1[1];
            v56 = v55 & 8;
            if (v48 == 120 && v56 != 0)
            {
              v59 = v45[v49];
              v60 = v46[3];
              v61 = v59 - 48;
              if ((v59 - 48) >= 0xAu && (v59 - 65 <= 0x25 ? (v62 = ((1 << (v59 - 65)) & 0x3F0000003FLL) == 0) : (v62 = 1), v62) || (v63 = v60 - 48, (v60 - 48) >= 0xAu) && ((v64 = v46[3] - 65, v64 > 0x25) || ((1 << v64) & 0x3F0000003FLL) == 0))
              {
                a1[3] = v43;
                if (v195)
                {
                  v187 = a1[6];
                  v30 = v43 >= v187;
                  v188 = v43 - v187;
                  if (v30)
                  {
                    v189 = v188;
                  }

                  else
                  {
                    v189 = 0;
                  }

                  v190 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unable to convert hex ('x') escape sequence character", a1[5], v189];
                  v191 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                  v205 = @"NSDebugDescription";
                  v206 = @"NSJSONSerializationErrorIndex";
                  v200 = v190;
                  v201 = v191;
                  *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
                }

                goto LABEL_246;
              }

              if ((v59 - 48) >= 0xAu)
              {
                if ((v59 - 65) > 5u)
                {
                  if ((v59 - 97) > 5u)
                  {
                    goto LABEL_324;
                  }

                  v61 = v59 - 87;
                }

                else
                {
                  v61 = v59 - 55;
                }
              }

              if ((v60 - 48) >= 0xAu)
              {
                if ((v60 - 65) > 5u)
                {
                  if ((v60 - 97) > 5u)
                  {
LABEL_324:
                    __break(1u);
                    return;
                  }

                  v63 = v60 - 87;
                }

                else
                {
                  v63 = v60 - 55;
                }
              }

              if (!(v63 + 16 * v61))
              {
                a1[3] = v43;
                if (v195)
                {
                  v152 = a1[6];
                  v30 = v43 >= v152;
                  v153 = v43 - v152;
                  if (v30)
                  {
                    v154 = v153;
                  }

                  else
                  {
                    v154 = 0;
                  }

                  v155 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unsupported escaped (hex) null", a1[5], v154];
                  v156 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                  v205 = @"NSDebugDescription";
                  v206 = @"NSJSONSerializationErrorIndex";
                  v200 = v155;
                  v201 = v156;
                  *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
                }

                goto LABEL_246;
              }

              v40[v42] = v63 + 16 * v61;
              v43 += 2;
              goto LABEL_124;
            }

            if (v48 == 39 && v56 != 0)
            {
              v54 = 39;
              goto LABEL_123;
            }

            if (v48 == 48 && (v55 & 8) != 0)
            {
              a1[3] = v43;
              if (v195)
              {
                v177 = a1[6];
                v30 = v43 >= v177;
                v178 = v43 - v177;
                if (v30)
                {
                  v179 = v178;
                }

                else
                {
                  v179 = 0;
                }

                v180 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unsupported escaped null", a1[5], v179];
                v181 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                v205 = @"NSDebugDescription";
                v206 = @"NSJSONSerializationErrorIndex";
                v200 = v180;
                v201 = v181;
                *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
              }

              goto LABEL_246;
            }

            if (v48 != 10 || (v55 & 8) == 0)
            {
              if (v48 != 13 || (v55 & 8) == 0)
              {
                a1[3] = v43;
                if (v195)
                {
                  v182 = a1[6];
                  v30 = v43 >= v182;
                  v183 = v43 - v182;
                  if (v30)
                  {
                    v184 = v183;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  v185 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Invalid escape sequence", a1[5], v184];
                  v186 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
                  v205 = @"NSDebugDescription";
                  v206 = @"NSJSONSerializationErrorIndex";
                  v200 = v185;
                  v201 = v186;
                  *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
                }

                goto LABEL_246;
              }

              if (v49 < v197 && v45[v49] == 10)
              {
                ++v43;
              }
            }

LABEL_117:
            v54 = 10;
            goto LABEL_123;
          }

          if (v45[v43 + 1] > 0x5Bu)
          {
            if (v48 == 92)
            {
              v54 = 92;
              goto LABEL_123;
            }

            if (v48 != 98)
            {
              goto LABEL_127;
            }

            v54 = 8;
          }

          else
          {
            if (v48 == 34)
            {
              v54 = 34;
              goto LABEL_123;
            }

            if (v48 != 47)
            {
              goto LABEL_127;
            }

            v54 = 47;
          }

LABEL_123:
          v40[v42] = v54;
LABEL_124:
          ++v43;
          goto LABEL_125;
        }

        v42 = 0;
LABEL_196:
        v81 = off_1E69EE918;
        if ((a1[1] & 2) != 0)
        {
          v81 = off_1E69EE690;
        }

        v82 = [objc_alloc(*v81) initWithBytesNoCopy:v40 length:v42 encoding:4 freeWhenDone:1];
        if (v82)
        {
          v83 = 1;
          if (!v8)
          {
            v83 = 2;
          }

          a1[3] = v197 + v83;
          _setInCache(v196, v82, v16, &v15[v5], v17 - v5);
        }

        else
        {
          if (v195)
          {
            v96 = a1 + 3;
            v95 = a1[3];
            v97 = a1[6];
            v30 = v95 >= v97;
            v98 = v95 - v97;
            if (v30)
            {
              v99 = v98;
            }

            else
            {
              v99 = 0;
            }

            v100 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unable to convert data to string", a1[5], v99];
            v101 = [[NSNumber alloc] initWithUnsignedInteger:*v96];
            v205 = @"NSDebugDescription";
            v206 = @"NSJSONSerializationErrorIndex";
            v200 = v100;
            v201 = v101;
            *v195 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
          }

LABEL_246:
          v50 = v40;
LABEL_247:
          free(v50);
        }
      }

      else
      {
        v78 = [[NSString alloc] initWithBytes:*a1 + v5 length:v38 encoding:4];
        if (v78)
        {
          v79 = 1;
          if (!v8)
          {
            v79 = 2;
          }

          a1[3] = v197 + v79;
          _setInCache(v196, v78, v16, &v15[v5], v17 - v5);
        }

        else if (a3)
        {
          v89 = a1[3];
          v90 = a1[6];
          v30 = v89 >= v90;
          v91 = v89 - v90;
          if (v30)
          {
            v92 = v91;
          }

          else
          {
            v92 = 0;
          }

          v93 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unable to convert data to string", a1[5], v92];
          v94 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
          v205 = @"NSDebugDescription";
          v206 = @"NSJSONSerializationErrorIndex";
          v200 = v93;
          v201 = v94;
          *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
        }
      }
    }

    else
    {
      v80 = v8 ^ 1;
      if (v18 != 13)
      {
        v80 = 1;
      }

      if ((v80 & 1) == 0)
      {
        v36 = v17;
        if (v13 > v17 + 1)
        {
          if (v15[v17 + 1] == 10)
          {
            v36 = v17 + 1;
          }

          else
          {
            v36 = v17;
          }
        }

        goto LABEL_73;
      }

      a1[3] = v17;
      if (a3)
      {
        v84 = a1[6];
        v30 = v17 >= v84;
        v85 = v17 - v84;
        if (v30)
        {
          v86 = v85;
        }

        else
        {
          v86 = 0;
        }

        v87 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unescaped control character", a1[5], v86];
        v88 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
        v205 = @"NSDebugDescription";
        v206 = @"NSJSONSerializationErrorIndex";
        v200 = v87;
        v201 = v88;
        *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v205 count:2]);
      }
    }
  }
}

void sub_18080EF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _setInCache(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = a1 + 32 * a3;
  v10 = *(v9 + 16);
  if (v10)
  {
  }

  result = a2;
  *(v9 + 8) = a5;
  *(v9 + 16) = result;
  *(v9 + 24) = a3;
  *v9 = a4;
  return result;
}

NSString *newJSONNumber(uint64_t a1, void *a2)
{
  v3 = a1;
  v104 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v5 = *a1;
  v6 = (*a1 + v4);
  v7 = *v6;
  v8 = v7;
  v9 = v4;
  if (v7 == 45)
  {
    v9 = v4 + 1;
    if (*(a1 + 16) <= v4 + 1)
    {
      if (a2)
      {
        v14 = *(a1 + 48);
        v12 = v4 >= v14;
        v13 = v4 - v14;
        goto LABEL_9;
      }

      return 0;
    }

    *(a1 + 24) = v9;
    v8 = *(v5 + v9);
    v10 = v8 - 48;
    if ((*(a1 + 8) & 8) != 0)
    {
      if (v8 != 46 && v10 >= 0xA)
      {
LABEL_5:
        if (a2)
        {
          v11 = *(a1 + 48);
          v12 = v9 >= v11;
          v13 = v9 - v11;
LABEL_9:
          if (v12)
          {
            v15 = v13;
          }

          else
          {
            v15 = 0;
          }

          v16 = [NSString alloc];
          v17 = v3[5];
          v97 = v15;
          v18 = @"Number with minus sign but no digits";
LABEL_13:
          v19 = [(NSString *)v16 initWithFormat:@"%@ around line %lu, column %lu.", v18, v17, v97];
          v20 = [[NSNumber alloc] initWithUnsignedInteger:v3[3]];
          v102 = @"NSDebugDescription";
          v103 = @"NSJSONSerializationErrorIndex";
          v98 = v19;
          v99 = v20;
          *a2 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v102 count:2]);

          return 0;
        }

        return 0;
      }
    }

    else if (v10 >= 0xA)
    {
      goto LABEL_5;
    }
  }

  if (v8 == 48)
  {
    ++v9;
    v23 = *(a1 + 16);
    *(a1 + 24) = v9;
    if (v23 <= v9)
    {
      v29 = [NSNumber alloc];
      v30 = 0;
      goto LABEL_33;
    }

    if (*(v5 + v9) - 48 <= 9)
    {
      if (!a2)
      {
        return 0;
      }

      v24 = *(a1 + 48);
      v12 = v9 >= v24;
      v25 = v9 - v24;
      if (v12)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v16 = [NSString alloc];
      v17 = v3[5];
      v97 = v26;
      v18 = @"Number with leading zero";
      goto LABEL_13;
    }
  }

  else if ((v8 - 48) > 9)
  {
    if (v8 != 46 || (*(a1 + 8) & 8) == 0)
    {
      if (!a2)
      {
        return 0;
      }

      v33 = *(a1 + 48);
      v12 = v9 >= v33;
      v34 = v9 - v33;
      if (v12)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      v16 = [NSString alloc];
      v17 = v3[5];
      v97 = v35;
      v18 = @"Malformed number";
      goto LABEL_13;
    }

    v23 = *(a1 + 16);
    if (v23 <= v9 + 1)
    {
      if (!a2)
      {
        return 0;
      }

      v56 = *(a1 + 48);
      v12 = v9 >= v56;
      v57 = v9 - v56;
      if (v12)
      {
        v58 = v57;
      }

      else
      {
        v58 = 0;
      }

      v16 = [NSString alloc];
      v17 = v3[5];
      v97 = v58;
      v18 = @"Decimal point before EoF";
      goto LABEL_13;
    }

    if (*(v5 + v9 + 1) - 48 >= 0xA)
    {
      if (!a2)
      {
        return 0;
      }

      v69 = *(a1 + 48);
      v12 = v9 >= v69;
      v70 = v9 - v69;
      if (v12)
      {
        v71 = v70;
      }

      else
      {
        v71 = 0;
      }

      v16 = [NSString alloc];
      v17 = v3[5];
      v97 = v71;
      v18 = @"Decimal point with no digits";
      goto LABEL_13;
    }
  }

  else
  {
    v23 = *(a1 + 16);
    v27 = v9 + 1;
    do
    {
      v9 = v27;
      *(a1 + 24) = v27;
      if (v23 <= v27)
      {
        break;
      }

      v28 = *(v5 + v27++) - 48;
    }

    while (v28 < 0xA);
  }

  if (v23 > v9 && *(v5 + v9) == 46)
  {
    v36 = v9 + 1;
    if ((*(a1 + 8) & 8) == 0)
    {
      if (v23 <= v36)
      {
        v36 = v9;
      }

      else
      {
        *(a1 + 24) = v36;
        if (*(v5 + v36) - 48 <= 9)
        {
          v37 = v9 + 2;
          while (v23 != v37)
          {
            *(a1 + 24) = v37;
            v38 = *(v5 + v37++) - 48;
            if (v38 >= 0xA)
            {
              goto LABEL_122;
            }
          }

LABEL_180:
          v40 = 0;
          v41 = 0;
          *(a1 + 24) = v23;
          v39 = 1;
          v9 = v23;
          goto LABEL_59;
        }
      }

      if (!a2)
      {
        return 0;
      }

      v76 = *(a1 + 48);
      v12 = v36 >= v76;
      v77 = v36 - v76;
      if (v12)
      {
        v78 = v77;
      }

      else
      {
        v78 = 0;
      }

      v16 = [NSString alloc];
      v17 = v3[5];
      v97 = v78;
      v18 = @"Number with decimal point but no additional digits";
      goto LABEL_13;
    }

    *(a1 + 24) = v36;
    if (v23 <= v36)
    {
      v39 = 0;
      v40 = 0;
      v41 = 1;
    }

    else
    {
      if (*(v5 + v36) - 48 <= 9)
      {
        v37 = v9 + 2;
        while (v23 != v37)
        {
          *(a1 + 24) = v37;
          v68 = *(v5 + v37++) - 48;
          if (v68 >= 0xA)
          {
LABEL_122:
            v40 = 0;
            v41 = 0;
            v9 = v37 - 1;
            v39 = 1;
            goto LABEL_59;
          }
        }

        goto LABEL_180;
      }

      v39 = 0;
      v41 = 1;
      v40 = -1;
    }

    ++v9;
    goto LABEL_59;
  }

  v39 = 0;
  v40 = 0;
  v41 = 1;
LABEL_59:
  if (v23 > v9 && (*(v5 + v9) | 0x20) == 0x65)
  {
    v42 = v9 + 1;
    if (v23 <= v9 + 1)
    {
      if (!a2)
      {
        return 0;
      }

      v65 = *(a1 + 48);
      v12 = v9 >= v65;
      v66 = v9 - v65;
      if (v12)
      {
        v67 = v66;
      }

      else
      {
        v67 = 0;
      }

      v16 = [NSString alloc];
      v17 = v3[5];
      v97 = v67;
      v18 = @"Number with exponent followed by EoF";
      goto LABEL_13;
    }

    *(a1 + 24) = v42;
    v43 = *(v5 + v42);
    if (v43 == 45 || v43 == 43)
    {
      v44 = v9 + 2;
      if (v23 > v44)
      {
        *(a1 + 24) = v44;
        if (*(v5 + v44) - 48 <= 9)
        {
          v45 = 3;
LABEL_169:
          v9 = v44 + 1;
          v86 = 5 - v45;
          do
          {
            *(a1 + 24) = v9;
            if (v23 <= v9 || *(v5 + v9) - 48 > 9)
            {
              v59 = -v86;
              goto LABEL_97;
            }

            ++v9;
            --v86;
          }

          while (v86 != -1);
          *(a1 + 24) = v4;
          if (!a2)
          {
            return 0;
          }

          v87 = *(a1 + 48);
          v12 = v4 >= v87;
          v88 = v4 - v87;
          if (v12)
          {
            v89 = v88;
          }

          else
          {
            v89 = 0;
          }

          v16 = [NSString alloc];
          v17 = v3[5];
          v97 = v89;
          v18 = @"Number wound up as NaN";
          goto LABEL_13;
        }

        v42 = v44;
      }

      if (!a2)
      {
        return 0;
      }

      v90 = *(a1 + 48);
      v12 = v42 >= v90;
      v91 = v42 - v90;
      if (v12)
      {
        v92 = v91;
      }

      else
      {
        v92 = 0;
      }

      v16 = [NSString alloc];
      v17 = v3[5];
      v97 = v92;
      v18 = @"Number with '+' or '-' but no additional digits";
      goto LABEL_13;
    }

    if ((v43 - 48) >= 0xA)
    {
      if (!a2)
      {
        return 0;
      }

      v93 = *(a1 + 48);
      if (v9 >= v93)
      {
        v94 = v42 - v93;
      }

      else
      {
        v94 = 0;
      }

      v16 = [NSString alloc];
      v17 = v3[5];
      v97 = v94;
      v18 = @"Number with 'e' but no additional digits";
      goto LABEL_13;
    }

    v45 = 2;
    v44 = v9 + 1;
    goto LABEL_169;
  }

  if (v41)
  {
    v46 = 0;
    v47 = 0;
    v48 = (v5 + v9 + v40 - 1);
    v49 = (v7 == 45 ? v6 + 1 : v6);
    v50 = 1;
    while (v48 >= v49)
    {
      v51 = 0;
      if (v50)
      {
        v52 = *v48 - 48;
        if (*v48 != 48)
        {
          v51 = v52 * v50;
          if (__CFADD__(v47, v52 * v50) || (v52 * v50) >> 64 != 0)
          {
            v46 = 1;
          }
        }
      }

      --v48;
      if (v50 > 0x1999999999999999)
      {
        v54 = 1;
      }

      else
      {
        v54 = v46;
      }

      a1 = 10 * v50;
      if (v48 >= v49)
      {
        v55 = v50 == 0;
      }

      else
      {
        a1 = v50;
        v55 = 1;
      }

      v47 += v51;
      if (!v55)
      {
        v46 = v54;
      }

      v50 = a1;
      if (v46)
      {
        goto LABEL_96;
      }
    }

    if ((v46 & 1) == 0)
    {
      if (v7 != 45)
      {
        v31 = [[NSNumber alloc] initWithUnsignedLongLong:v47];
        goto LABEL_34;
      }

      if (v47 > 0x8000000000000000)
      {
        goto LABEL_96;
      }

      v29 = [NSNumber alloc];
      v30 = -v47;
LABEL_33:
      v31 = [(NSNumber *)v29 initWithLongLong:v30];
LABEL_34:

      return newJSONNumberCreateRoundTripping(v3, v4, v31);
    }
  }

LABEL_96:
  v59 = -5;
LABEL_97:
  v60 = v9 - v4;
  if (v9 == v4)
  {
    if (!a2)
    {
      return 0;
    }

    v61 = v3[6];
    v12 = v4 >= v61;
    v62 = v4 - v61;
    if (v12)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    v16 = [NSString alloc];
    v17 = v3[5];
    v97 = v63;
    v18 = @"Invalid number";
    goto LABEL_13;
  }

  v64 = 24;
  if (v7 == 45)
  {
    v64 = 25;
  }

  if (v39)
  {
    if (v7 == 45 && v60 >= 4)
    {
      if (v6[1] == 48 && v6[2] == 46)
      {
        goto LABEL_137;
      }
    }

    else if (v7 != 45 && v60 >= 3 && *v6 == 48)
    {
      if (v6[1] != 46)
      {
        v64 = 23;
      }

      goto LABEL_137;
    }

    --v64;
  }

  else
  {
    v64 -= 2;
  }

LABEL_137:
  if (v59 + v64 < v60)
  {
    goto LABEL_156;
  }

  MEMORY[0x1EEE9AC00](a1);
  v72 = &v95;
  if (v60 < 0x1A || (result = malloc_type_malloc(v60 + 1, 0xFAC27F7BuLL), (v72 = result) != 0))
  {
    memcpy(v72, v6, v60);
    *(&v72->super.isa + v60) = 0;
    v73 = *__error();
    *__error() = 0;
    v98 = 0;
    v74 = strtod_l(v72, &v98, 0);
    if (v74 == 0.0 && *v98 || v74 == INFINITY && *__error() == 34)
    {
      v75 = 0;
    }

    else
    {
      v75 = [[NSNumber alloc] initWithDouble:v74];
    }

    *__error() = v73;
    if (v72 != &v95)
    {
      free(v72);
    }

    if (v75)
    {
      return newJSONNumberCreateRoundTripping(v3, v4, v75);
    }

LABEL_156:
    if (a2)
    {
      *a2 = 0;
    }

    v79 = [[NSString alloc] initWithBytesNoCopy:*v3 + v4 length:v60 encoding:1 freeWhenDone:0];
    v75 = [[NSDecimalNumber alloc] initWithString:v79];

    v98 = 0;
    v99 = 0;
    v100 = 0;
    if (!v75 || ([(NSDecimalNumber *)v75 decimalValue], (v98 & 0x1F00) == 0x1000))
    {
      v3[3] = v4;
      if (a2)
      {
        v80 = v3[6];
        v12 = v4 >= v80;
        v81 = v4 - v80;
        if (v12)
        {
          v82 = v81;
        }

        else
        {
          v82 = 0;
        }

        v83 = [NSString alloc];
        v96 = v3[5];
        v84 = [(NSString *)v83 initWithFormat:@"%@ around line %lu, column %lu.", @"Number wound up as NaN", v96, v82];
        v85 = [[NSNumber alloc] initWithUnsignedInteger:v3[3]];
        v101[0] = @"NSDebugDescription";
        v101[1] = @"NSJSONSerializationErrorIndex";
        v102 = v84;
        v103 = v85;
        *a2 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:v101 count:2]);
      }

      return 0;
    }

    return newJSONNumberCreateRoundTripping(v3, v4, v75);
  }

  qword_1EA7BB378 = "Unable to allocate space to decode JSON number.";
  __break(1u);
  return result;
}

NSString *newJSONNumberCreateRoundTripping(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3 || (*(a1 + 9) & 0x10) == 0)
  {
    return a3;
  }

  result = [[NSString alloc] initWithBytes:*a1 + a2 length:*(a1 + 24) - a2 encoding:4];
  if (result)
  {
    v5 = result;
    v6 = [[_NSJSONRoundTrippingNumber alloc] initWithNumber:a3 representation:result];

    return v6;
  }

  else
  {
    qword_1EA7BB378 = "Unable to allocate string from UTF-8 JSON data.";
    __break(1u);
  }

  return result;
}

uint64_t skipJSONWhitespace(uint64_t a1, void *a2, char a3)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v6 > v7)
  {
    if ((*(a1 + 8) & 8) == 0)
    {
      v8 = *a1;
      while (1)
      {
        v9 = *(v8 + v7);
        if (v9 > 0xC)
        {
          if (v9 != 32)
          {
            if (v9 != 13)
            {
              return 1;
            }

            v10 = v7 + 1;
            *(a1 + 24) = v7 + 1;
            if (v6 > v7 + 1 && *(v8 + v10) == 10)
            {
              v10 = v7 + 2;
              *(a1 + 24) = v7 + 2;
            }

            ++*(a1 + 40);
            *(a1 + 48) = v10;
            v7 = v10;
            goto LABEL_15;
          }
        }

        else if (v9 != 9)
        {
          if (v9 != 10)
          {
            return 1;
          }

          *(a1 + 24) = ++v7;
          ++*(a1 + 40);
          *(a1 + 48) = v7;
          goto LABEL_15;
        }

        *(a1 + 24) = ++v7;
LABEL_15:
        if (v6 <= v7)
        {
          goto LABEL_16;
        }
      }
    }

    do
    {
      v18 = *a1;
      v19 = (*a1 + v7);
      v20 = v7 + 1;
      if (v6 <= v7 + 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19[1];
      }

      v22 = *v19;
      if (v22 <= 0x20)
      {
        if (((1 << v22) & 0x100001A00) != 0)
        {
          goto LABEL_29;
        }

        if (v22 == 10)
        {
          goto LABEL_35;
        }

        if (v22 == 13)
        {
          *(a1 + 24) = v20;
          if (v6 > v20 && *(v18 + v20) == 10)
          {
            v20 = v7 + 2;
LABEL_35:
            *(a1 + 24) = v20;
          }

          ++*(a1 + 40);
          *(a1 + 48) = v20;
          goto LABEL_37;
        }
      }

      if (v22 == 160)
      {
LABEL_29:
        *(a1 + 24) = v20;
        goto LABEL_37;
      }

      v23 = v6 > v20 && v22 == 47;
      v24 = v23;
      if (v23 && v21 == 47)
      {
        *(a1 + 24) = v7 + 2;
        if ((skipJSON5Comment(a1, 1, a2) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v21 != 42)
        {
          v24 = 0;
        }

        if (v24 != 1)
        {
          return 1;
        }

        *(a1 + 24) = v7 + 2;
        result = skipJSON5Comment(a1, 0, a2);
        if (!result)
        {
          return result;
        }
      }

LABEL_37:
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);
    }

    while (v6 > v7);
  }

LABEL_16:
  *(a1 + 24) = v6;
  if (a3)
  {
    return 1;
  }

  if (a2)
  {
    v12 = *(a1 + 48);
    v13 = v6 >= v12;
    v14 = v6 - v12;
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file", *(a1 + 40), v15];
    v17 = [[NSNumber alloc] initWithUnsignedInteger:*(a1 + 24)];
    v25[0] = @"NSDebugDescription";
    v25[1] = @"NSJSONSerializationErrorIndex";
    v26[0] = v16;
    v26[1] = v17;
    *a2 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2]);
  }

  return 0;
}

id newJSONObject(uint64_t a1, char a2, id *a3)
{
  v95 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
LABEL_5:
    if (*(a1 + 16) <= v5 + 1)
    {
      if (a3)
      {
        v7 = *(a1 + 48);
        v8 = v5 >= v7;
        v9 = v5 - v7;
        if (v8)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during JSON parse.", *(a1 + 40), v10];
        v12 = [[NSNumber alloc] initWithUnsignedInteger:*(a1 + 24)];
        v89[0] = @"NSDebugDescription";
        v89[1] = @"NSJSONSerializationErrorIndex";
        v90[0] = v11;
        v90[1] = v12;
        *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:2]);
      }
    }

    else
    {
      *(a1 + 24) = v5 + 1;
      if (skipJSONWhitespace(a1, a3, 0))
      {
        v5 = *(a1 + 24);
        if (*(*a1 + v5) == 125)
        {
          *(a1 + 24) = v5 + 1;
          if (*(a1 + 8))
          {
            v6 = MEMORY[0x1E695DF90];
          }

          else
          {
            v6 = MEMORY[0x1E695DF20];
          }

          return objc_alloc_init(v6);
        }

        v87 = 0;
        goto LABEL_17;
      }
    }

    return 0;
  }

  v5 = *(a1 + 24);
  if (*(*a1 + v5) == 123)
  {
    goto LABEL_5;
  }

  v87 = 1;
LABEL_17:
  v14 = 0;
  v15 = 1;
  v16 = v90;
  v17 = v89;
  v18 = 32;
  v88 = 1;
  while (1)
  {
    v19 = v15 - 1;
    if ((*(a1 + 8) & 8) != 0)
    {
      v20 = 1;
    }

    else
    {
      if (*(*a1 + v5) != 34)
      {
        if (a3)
        {
          v49 = *(a1 + 48);
          v8 = v5 >= v49;
          v50 = v5 - v49;
          v51 = v15 - 1;
          if (v8)
          {
            v52 = v50;
          }

          else
          {
            v52 = 0;
          }

          v53 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"No string key for value in object", *(a1 + 40), v52];
          v54 = [[NSNumber alloc] initWithUnsignedInteger:*(a1 + 24)];
          v91 = @"NSDebugDescription";
          v92 = @"NSJSONSerializationErrorIndex";
          v93 = v53;
          v94 = v54;
          *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v91 count:2]);

          v19 = v51;
        }

        goto LABEL_51;
      }

      v20 = 0;
    }

    newJSONString(a1, v20, a3);
    if (!v21)
    {
      goto LABEL_51;
    }

    v22 = v21;
    if ((skipJSONWhitespace(a1, a3, 0) & 1) == 0)
    {
LABEL_50:

LABEL_51:
      v13 = 0;
      v15 = v19;
      goto LABEL_91;
    }

    v23 = *(a1 + 24);
    if (*(*a1 + v23) != 58)
    {
      v37 = v88;
      if (a3)
      {
        v38 = *(a1 + 48);
        v8 = v23 >= v38;
        v39 = v23 - v38;
        v40 = v15 - 1;
        if (v8)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0;
        }

        v42 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"No value for key in object", *(a1 + 40), v41];
        goto LABEL_66;
      }

LABEL_67:

      v13 = 0;
      v15 = v19;
      goto LABEL_92;
    }

    if (*(a1 + 16) <= v23 + 1)
    {
      v37 = v88;
      if (a3)
      {
        v43 = *(a1 + 48);
        v8 = v23 >= v43;
        v44 = v23 - v43;
        v40 = v15 - 1;
        if (v8)
        {
          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        v42 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during JSON parse.", *(a1 + 40), v45];
LABEL_66:
        v46 = v42;
        v47 = [[NSNumber alloc] initWithUnsignedInteger:*(a1 + 24)];
        v91 = @"NSDebugDescription";
        v92 = @"NSJSONSerializationErrorIndex";
        v93 = v46;
        v94 = v47;
        *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v91 count:2]);

        v19 = v40;
        goto LABEL_67;
      }

      goto LABEL_67;
    }

    *(a1 + 24) = v23 + 1;
    if ((skipJSONWhitespace(a1, a3, 0) & 1) == 0)
    {
      goto LABEL_50;
    }

    v24 = v16;
    v25 = newJSONValue(a1, a3);
    if (!v25)
    {

      v13 = 0;
      --v15;
      goto LABEL_91;
    }

    v26 = v25;
    if (v19 >= v18)
    {
      v85 = v15 - 1;
      __src = v17;
      v18 *= 2;
      if (v88)
      {
        v27 = NSAllocateObjectArray(v18);
        v28 = NSAllocateObjectArray(v18);
        v29 = v28;
        if (!v28 || !v27)
        {
          free(v28);
          free(v27);

          if (a3)
          {
            v73 = *(a1 + 24);
            v74 = *(a1 + 48);
            v8 = v73 >= v74;
            v75 = v73 - v74;
            if (v8)
            {
              v76 = v75;
            }

            else
            {
              v76 = 0;
            }

            v77 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Memory exhausted during parse of dictionary.", *(a1 + 40), v76];
            v78 = [[NSNumber alloc] initWithUnsignedInteger:*(a1 + 24)];
            v91 = @"NSDebugDescription";
            v92 = @"NSJSONSerializationErrorIndex";
            v93 = v77;
            v94 = v78;
            *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v91 count:2]);
          }

          v13 = 0;
          v37 = 1;
LABEL_118:
          v15 = v85;
          v17 = __src;
          v16 = v24;
          goto LABEL_92;
        }

        memmove(v27, v24, v14);
        memmove(v29, __src, v14);
      }

      else
      {
        v29 = NSReallocateObjectArray(v17, v18);
        v30 = NSReallocateObjectArray(v24, v18);
        v27 = v30;
        if (!v29 || !v30)
        {
          free(v29);
          free(v27);

          if (a3)
          {
            v79 = *(a1 + 24);
            v80 = *(a1 + 48);
            v8 = v79 >= v80;
            v81 = v79 - v80;
            if (v8)
            {
              v82 = v81;
            }

            else
            {
              v82 = 0;
            }

            v83 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Memory exhausted during parse of dictionary.", *(a1 + 40), v82];
            v84 = [[NSNumber alloc] initWithUnsignedInteger:*(a1 + 24)];
            v91 = @"NSDebugDescription";
            v92 = @"NSJSONSerializationErrorIndex";
            v93 = v83;
            v94 = v84;
            *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v91 count:2]);
          }

          v37 = 0;
          v13 = 0;
          goto LABEL_118;
        }
      }

      v88 = 0;
      v24 = v27;
      v17 = v29;
    }

    *&v17[v14] = v22;
    v24[v14 / 8] = v26;
    v16 = v24;
    if (!v87)
    {
      break;
    }

    if (!skipJSONWhitespace(a1, a3, 1))
    {
      goto LABEL_70;
    }

    v32 = *(a1 + 16);
    v31 = *(a1 + 24);
    if (v32 <= v31)
    {
      goto LABEL_70;
    }

    if (*(*a1 + v31) != 44)
    {
      if (a3)
      {
        v59 = *(a1 + 48);
        v8 = v31 >= v59;
        v60 = v31 - v59;
        if (v8)
        {
          v61 = v60;
        }

        else
        {
          v61 = 0;
        }

        v62 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Badly formed object", *(a1 + 40), v61];
        v63 = [[NSNumber alloc] initWithUnsignedInteger:*(a1 + 24)];
        v91 = @"NSDebugDescription";
        v92 = @"NSJSONSerializationErrorIndex";
        v93 = v62;
        v94 = v63;
        *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v91 count:2]);
      }

LABEL_90:
      v13 = 0;
LABEL_91:
      v37 = v88;
      goto LABEL_92;
    }

    v33 = v31 + 1;
    if (v32 <= v33)
    {
      goto LABEL_70;
    }

    *(a1 + 24) = v33;
    if (!skipJSONWhitespace(a1, a3, 1))
    {
      goto LABEL_70;
    }

    v5 = *(a1 + 24);
    if (*(a1 + 16) <= v5)
    {
      goto LABEL_70;
    }

LABEL_49:
    ++v15;
    v14 += 8;
  }

  if (!skipJSONWhitespace(a1, a3, 0))
  {
    goto LABEL_90;
  }

  v34 = *(a1 + 24);
  v35 = *(*a1 + v34);
  if (v35 == 44)
  {
    if (*(a1 + 16) > v34 + 1)
    {
      *(a1 + 24) = v34 + 1;
      if (!skipJSONWhitespace(a1, a3, 0))
      {
        goto LABEL_90;
      }

      v5 = *(a1 + 24);
      if (*(*a1 + v5) == 125)
      {
        goto LABEL_70;
      }

      goto LABEL_49;
    }

    v37 = v88;
    if (a3)
    {
      v68 = *(a1 + 48);
      v8 = v34 >= v68;
      v69 = v34 - v68;
      if (v8)
      {
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      v58 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during JSON parse.", *(a1 + 40), v70];
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  if (v35 != 125)
  {
    v37 = v88;
    if (a3)
    {
      v55 = *(a1 + 48);
      v8 = v34 >= v55;
      v56 = v34 - v55;
      if (v8)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      v58 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Badly formed object", *(a1 + 40), v57];
LABEL_104:
      v71 = v58;
      v72 = [[NSNumber alloc] initWithUnsignedInteger:*(a1 + 24)];
      v91 = @"NSDebugDescription";
      v92 = @"NSJSONSerializationErrorIndex";
      v93 = v71;
      v94 = v72;
      *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v91 count:2]);
    }

LABEL_105:
    v13 = 0;
    goto LABEL_92;
  }

LABEL_70:
  if (*(a1 + 8))
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjects:v24 forKeys:v17 count:v15];
    goto LABEL_91;
  }

  v37 = v88;
  if (dyld_program_sdk_at_least())
  {
    v48 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v24 forKeys:v17 count:v15];
  }

  else
  {
    v48 = CFDictionaryCreate(*MEMORY[0x1E695E480], v17, v24, v15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v13 = v48;
LABEL_92:
  if (v15)
  {
    v64 = v16;
    v65 = v17;
    do
    {
      v66 = *v64++;

      v67 = *v65++;
      --v15;
    }

    while (v15);
  }

  if ((v37 & 1) == 0)
  {
    free(v16);
    free(v17);
  }

  ++*(a1 + 24);
  return v13;
}

CFArrayRef newJSONValue(NSString *a1, id *a2)
{
  v112 = *MEMORY[0x1E69E9840];
  if (a1[4].super.isa >= 0x201)
  {
    if (a2)
    {
      isa = a1[3].super.isa;
      v5 = a1[6].super.isa;
      v6 = isa >= v5;
      v7 = isa - v5;
      if (v6)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Too many nested arrays or dictionaries", a1[5].super.isa, v8];
      v10 = [[NSNumber alloc] initWithUnsignedInteger:a1[3].super.isa];
      v110 = @"NSDebugDescription";
      v111 = @"NSJSONSerializationErrorIndex";
      __src = v9;
      v107 = v10;
      *a2 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&__src forKeys:&v110 count:2]);
    }

    return 0;
  }

  v12 = a1->super.isa;
  v14 = a1[2].super.isa;
  v13 = a1[3].super.isa;
  if (v14 <= v13 + 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v13 + v12 + 1);
  }

  v16 = *(v13 + v12);
  v17 = v13 + 2;
  v18 = v14 <= v17 || (*(v12 + v17) & 0xDF) != 88;
  v105 = 0;
  v19 = objc_autoreleasePoolPush();
  if (v16 == 34)
  {
    goto LABEL_26;
  }

  if (v16 == 123)
  {
    ++a1[4].super.isa;
    v23 = newJSONObject(a1, 0, &v105);
LABEL_23:
    v11 = v23;
    goto LABEL_46;
  }

  if (v16 != 91)
  {
    v24 = a1[1].super.isa;
    if ((v24 & 8) != 0 && v16 == 39)
    {
LABEL_26:
      newJSONString(a1, 0, &v105);
LABEL_27:
      v11 = v25;
      goto LABEL_47;
    }

    if ((v16 - 102) <= 0xE && ((1 << (v16 - 102)) & 0x4101) != 0)
    {
      v27 = a1[3].super.isa;
      v28 = a1->super.isa + v27;
      v29 = *v28;
      switch(v29)
      {
        case 't':
          if (a1[2].super.isa > (v27 + 3))
          {
            a1[3].super.isa = (v27 + 3);
            if (v28[1] == 114 && v28[2] == 117 && v28[3] == 101)
            {
              v30 = *MEMORY[0x1E695E4D0];
              v31 = v27 + 4;
              goto LABEL_89;
            }

            a1[3].super.isa = v27;
            v66 = a1[6].super.isa;
            v6 = v27 >= v66;
            v67 = v27 - v66;
            if (v6)
            {
              v68 = v67;
            }

            else
            {
              v68 = 0;
            }

            v57 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Something looked like a 'true' but wasn't", a1[5].super.isa, v68];
            goto LABEL_122;
          }

          break;
        case 'n':
          if (a1[2].super.isa > (v27 + 3))
          {
            a1[3].super.isa = (v27 + 3);
            if (v28[1] == 117 && v28[2] == 108 && v28[3] == 108)
            {
              v30 = [MEMORY[0x1E695DFB0] null];
              v31 = a1[3].super.isa + 1;
              goto LABEL_89;
            }

            a1[3].super.isa = v27;
            v63 = a1[6].super.isa;
            v6 = v27 >= v63;
            v64 = v27 - v63;
            if (v6)
            {
              v65 = v64;
            }

            else
            {
              v65 = 0;
            }

            v57 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Something looked like a 'null' but wasn't", a1[5].super.isa, v65];
LABEL_122:
            v69 = v57;
            v70 = [[NSNumber alloc] initWithUnsignedInteger:a1[3].super.isa];
            v110 = @"NSDebugDescription";
            v111 = @"NSJSONSerializationErrorIndex";
            __src = v69;
            v107 = v70;
            v105 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&__src forKeys:&v110 count:2]);

            v11 = 0;
            goto LABEL_47;
          }

          break;
        case 'f':
          if (a1[2].super.isa > (v27 + 4))
          {
            a1[3].super.isa = (v27 + 4);
            if (v28[1] == 97 && v28[2] == 108 && v28[3] == 115 && v28[4] == 101)
            {
              v30 = *MEMORY[0x1E695E4C0];
              v31 = v27 + 5;
LABEL_89:
              a1[3].super.isa = v31;
LABEL_95:
              v25 = v30;
              goto LABEL_27;
            }

            a1[3].super.isa = v27;
            v60 = a1[6].super.isa;
            v6 = v27 >= v60;
            v61 = v27 - v60;
            if (v6)
            {
              v62 = v61;
            }

            else
            {
              v62 = 0;
            }

            v57 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Something looked like a 'false' but wasn't", a1[5].super.isa, v62];
            goto LABEL_122;
          }

          break;
        default:
          v30 = 0;
          goto LABEL_95;
      }

      v54 = a1[6].super.isa;
      v6 = v27 >= v54;
      v55 = v27 - v54;
      if (v6)
      {
        v56 = v55;
      }

      else
      {
        v56 = 0;
      }

      v57 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during JSON parse.", a1[5].super.isa, v56];
      goto LABEL_122;
    }

    if ((v16 - 48) <= 9)
    {
      if ((v24 & 8) == 0 || (v15 & 0xFFFFFFDF) != 0x58)
      {
        goto LABEL_57;
      }

LABEL_167:
      v25 = newJSON5HexNumber(a1, &v105);
      goto LABEL_27;
    }

    if (v16 == 45)
    {
      v59 = (v24 & 8) == 0 || v15 != 48;
      if (!v59 && !v18)
      {
        goto LABEL_167;
      }

      if (((v24 & 8) == 0 || v15 != 73) && v15 != 78)
      {
        goto LABEL_57;
      }
    }

    else if ((v24 & 8) != 0 && v16 == 43)
    {
      v71 = a1[3].super.isa;
      if (a1[2].super.isa <= (v71 + 1))
      {
        v87 = a1[6].super.isa;
        v6 = v71 >= v87;
        v88 = v71 - v87;
        if (v6)
        {
          v89 = v88;
        }

        else
        {
          v89 = 0;
        }

        v90 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during JSON parse.", a1[5].super.isa, v89];
        v91 = [[NSNumber alloc] initWithUnsignedInteger:a1[3].super.isa];
        v110 = @"NSDebugDescription";
        v111 = @"NSJSONSerializationErrorIndex";
        __src = v90;
        v107 = v91;
        v105 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&__src forKeys:&v110 count:2]);
      }

      else
      {
        a1[3].super.isa = (v71 + 1);
      }

      if (v15 == 48 && !v18)
      {
        goto LABEL_167;
      }

      if (v15 != 78 && v15 != 73)
      {
        goto LABEL_57;
      }
    }

    else if (((v24 & 8) == 0 || v16 != 73) && ((v24 & 8) == 0 || v16 != 78))
    {
      if ((v24 & 8) == 0 || v16 != 46)
      {
        v72 = a1[3].super.isa;
        v73 = a1[6].super.isa;
        v6 = v72 >= v73;
        v74 = v72 - v73;
        if (v6)
        {
          v75 = v74;
        }

        else
        {
          v75 = 0;
        }

        v57 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Invalid value", a1[5].super.isa, v75];
        goto LABEL_122;
      }

LABEL_57:
      v25 = newJSONNumber(a1, &v105);
      goto LABEL_27;
    }

    v25 = newJSON5InfinityOrNaN(a1, &v105);
    goto LABEL_27;
  }

  ++a1[4].super.isa;
  v20 = a1[3].super.isa;
  if (a1[2].super.isa <= (v20 + 1))
  {
    v32 = a1[6].super.isa;
    v6 = v20 >= v32;
    v33 = v20 - v32;
    if (v6)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during JSON parse.", a1[5].super.isa, v34];
    v36 = [[NSNumber alloc] initWithUnsignedInteger:a1[3].super.isa];
    v110 = @"NSDebugDescription";
    v111 = @"NSJSONSerializationErrorIndex";
    __src = v35;
    v107 = v36;
    v105 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&__src forKeys:&v110 count:2]);

    goto LABEL_45;
  }

  a1[3].super.isa = (v20 + 1);
  if (!skipJSONWhitespace(a1, &v105, 0))
  {
LABEL_45:
    v11 = 0;
    goto LABEL_46;
  }

  v21 = a1[3].super.isa;
  if (*(a1->super.isa + v21) == 93)
  {
    a1[3].super.isa = (v21 + 1);
    if (a1[1].super.isa)
    {
      v22 = MEMORY[0x1E695DF70];
    }

    else
    {
      v22 = MEMORY[0x1E695DEC8];
    }

    v23 = objc_alloc_init(v22);
    goto LABEL_23;
  }

  v104 = v19;
  v41 = 0;
  p_src = &__src;
  v43 = 1;
  v44 = 32;
  v45 = 1;
  do
  {
    v46 = v43 - 1;
    v11 = newJSONValue(a1, &v105);
    if (!v11)
    {
      v52 = v45;
LABEL_151:
      v43 = v46;
      goto LABEL_152;
    }

    if ((skipJSONWhitespace(a1, &v105, 0) & 1) == 0)
    {
      v52 = v45;
LABEL_149:

LABEL_150:
      v11 = 0;
      goto LABEL_151;
    }

    v47 = a1[3].super.isa;
    v48 = *(a1->super.isa + v47);
    if (v48 != 44)
    {
      if (v48 == 93)
      {
        v49 = 1;
        goto LABEL_66;
      }

      v52 = v45;
      v76 = a1[6].super.isa;
      v6 = v47 >= v76;
      v77 = v47 - v76;
      if (v6)
      {
        v78 = v77;
      }

      else
      {
        v78 = 0;
      }

      v79 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Badly formed array", a1[5].super.isa, v78];
      goto LABEL_148;
    }

    if (a1[2].super.isa <= (v47 + 1))
    {
      v52 = v45;
      v80 = a1[6].super.isa;
      v6 = v47 >= v80;
      v81 = v47 - v80;
      if (v6)
      {
        v82 = v81;
      }

      else
      {
        v82 = 0;
      }

      v79 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during JSON parse.", a1[5].super.isa, v82];
LABEL_148:
      v83 = v79;
      v84 = [[NSNumber alloc] initWithUnsignedInteger:a1[3].super.isa];
      v108 = @"NSDebugDescription";
      v109 = @"NSJSONSerializationErrorIndex";
      v110 = v83;
      v111 = v84;
      v105 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v108 count:2]);

      goto LABEL_149;
    }

    v49 = 0;
    a1[3].super.isa = (v47 + 1);
LABEL_66:
    if (v46 < v44)
    {
      goto LABEL_72;
    }

    v44 *= 2;
    if ((v45 & 1) == 0)
    {
      v51 = NSReallocateObjectArray(p_src, v44);
      if (v51)
      {
        v45 = 0;
        p_src = v51;
        goto LABEL_72;
      }

      free(p_src);

      v92 = a1[3].super.isa;
      v93 = a1[6].super.isa;
      v6 = v92 >= v93;
      v94 = v92 - v93;
      if (v6)
      {
        v95 = v94;
      }

      else
      {
        v95 = 0;
      }

      v96 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Memory exhausted during parse of array.", a1[5].super.isa, v95];
      v97 = [[NSNumber alloc] initWithUnsignedInteger:a1[3].super.isa];
      v108 = @"NSDebugDescription";
      v109 = @"NSJSONSerializationErrorIndex";
      v110 = v96;
      v111 = v97;
      v105 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v108 count:2]);

      v52 = 0;
      goto LABEL_150;
    }

    v50 = NSAllocateObjectArray(v44);
    if (!v50)
    {

      v98 = a1[3].super.isa;
      v99 = a1[6].super.isa;
      v6 = v98 >= v99;
      v100 = v98 - v99;
      if (v6)
      {
        v101 = v100;
      }

      else
      {
        v101 = 0;
      }

      v102 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Memory exhausted during parse of array.", a1[5].super.isa, v101];
      v103 = [[NSNumber alloc] initWithUnsignedInteger:a1[3].super.isa];
      v108 = @"NSDebugDescription";
      v109 = @"NSJSONSerializationErrorIndex";
      v110 = v102;
      v111 = v103;
      v105 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v108 count:2]);

      v11 = 0;
      v52 = 1;
      v43 = v46;
LABEL_152:
      v19 = v104;
      if (!v43)
      {
        goto LABEL_155;
      }

      goto LABEL_153;
    }

    p_src = v50;
    memmove(v50, &__src, v41);
    v45 = 0;
LABEL_72:
    *&p_src[v41] = v11;
    if (!skipJSONWhitespace(a1, &v105, 0))
    {
      v52 = v45;
      v11 = 0;
      goto LABEL_152;
    }

    ++v43;
    v41 += 8;
  }

  while (((*(a1->super.isa + a1[3].super.isa) != 93) & ~v49) != 0);
  v52 = v45;
  --v43;
  if (a1[1].super.isa)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:p_src count:v43];
    goto LABEL_152;
  }

  v19 = v104;
  if (dyld_program_sdk_at_least())
  {
    v53 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:p_src count:v43];
  }

  else
  {
    v53 = CFArrayCreate(*MEMORY[0x1E695E480], p_src, v43, MEMORY[0x1E695E9C0]);
  }

  v11 = v53;
  if (v43)
  {
LABEL_153:
    v85 = p_src;
    do
    {
      v86 = *v85++;

      --v43;
    }

    while (v43);
  }

LABEL_155:
  if ((v52 & 1) == 0)
  {
    free(p_src);
  }

  ++a1[3].super.isa;
LABEL_46:
  --a1[4].super.isa;
LABEL_47:
  if (v105)
  {
    v37 = v105;
  }

  objc_autoreleasePoolPop(v19);
  v38 = v105;
  if (a2 && v105)
  {
    *a2 = v105;
  }

  v39 = v38;
  return v11;
}

uint64_t _writeJSONArray(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = 2 * a3;
    MEMORY[0x1EEE9AC00](a1);
    v8 = &v14[-1] - ((v9 + 17) & 0xFFFFFFFFFFFFFFF0);
    bzero(v8, v9 + 2);
    memset(v8, 32, v9 + 2);
    LOBYTE(__src) = 91;
    if (_appendBytes(&__src, 1uLL, a1, 91))
    {
      LOBYTE(__src) = 10;
      if (_appendBytes(&__src, 1uLL, a1, 10))
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  LOBYTE(__src) = 91;
  if (!_appendBytes(&__src, 1uLL, a1, 91))
  {
    return 0;
  }

  v8 = 0;
LABEL_6:
  __src = 0;
  p_src = &__src;
  v17 = 0x2020000000;
  v18 = 1;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___writeJSONArray_block_invoke;
  v14[3] = &unk_1E69F7000;
  v14[4] = a1;
  v14[5] = &__src;
  v14[6] = a4;
  v14[7] = v8;
  v14[8] = a3;
  [a2 enumerateObjectsUsingBlock:v14];
  if ((p_src[3] & 1) != 0 && ((a4 & 1) == 0 || (v19 = 10, _appendBytes(&v19, 1uLL, a1, 10)) && (!a3 || _appendBytes(v8, 2 * a3, a1, v11))))
  {
    v19 = 93;
    appended = _appendBytes(&v19, 1uLL, a1, 93);
  }

  else
  {
    appended = 0;
  }

  _Block_object_dispose(&__src, 8);
  return appended;
}

uint64_t ___writeJSONArray_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = result;
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = *(result + 32);
    __src = 44;
    result = _appendBytes(&__src, 1uLL, v7, 44);
    if ((result & 1) == 0)
    {
      *(*(*(v6 + 40) + 8) + 24) = 0;
    }

    if (*(*(*(v6 + 40) + 8) + 24) == 1 && (*(v6 + 48) & 1) != 0)
    {
      v8 = *(v6 + 32);
      v10 = 10;
      result = _appendBytes(&v10, 1uLL, v8, 10);
      if ((result & 1) == 0)
      {
        *(*(*(v6 + 40) + 8) + 24) = 0;
      }
    }
  }

  v9 = *(v6 + 40);
  if (*(*(v9 + 8) + 24) == 1 && (*(v6 + 48) & 1) != 0)
  {
    result = _appendBytes(*(v6 + 56), 2 * *(v6 + 64) + 2, *(v6 + 32), 2 * *(v6 + 64));
    v9 = *(v6 + 40);
    if ((result & 1) == 0)
    {
      *(*(v9 + 8) + 24) = 0;
      v9 = *(v6 + 40);
    }
  }

  if (*(*(v9 + 8) + 24) == 1)
  {
    result = _writeJSONValue(*(v6 + 32), a2, *(v6 + 64) + 1, *(v6 + 48));
    v9 = *(v6 + 40);
    if ((result & 1) == 0)
    {
      *(*(v9 + 8) + 24) = 0;
      v9 = *(v6 + 40);
    }
  }

  if ((*(*(v9 + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance URL()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 432))(ObjectType, v1);
}

void _BridgedURL.appendingPathComponent(_:)(uint64_t *a1@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url);
  v4 = [v3 URLByAppendingPathComponent_];
  swift_unknownObjectRelease();
  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v4, &v63);

    *a1 = v63;
    return;
  }

  v5 = [v3 absoluteString];
  if (!v5)
  {
    v14 = 0xE000000000000000;
    goto LABEL_25;
  }

  v6 = v5;
  isTaggedPointer = _objc_isTaggedPointer(v5);
  v8 = v6;
  v9 = v8;
  if (!isTaggedPointer)
  {
    goto LABEL_9;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
    LOWORD(v51[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v25 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v26)
    {
      v27 = v25;
      v28 = v26;
    }

    else
    {
      [v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v28 = *(&v61[0] + 1);
      v27 = *&v61[0];
    }

    goto LABEL_24;
  }

  if (TaggedPointerTag == 22)
  {
    v20 = [v9 UTF8String];
    if (v20)
    {
      v21 = String.init(utf8String:)(v20);
      if (v22)
      {
        v23 = v21;
        v24 = v22;

        v5 = v23;
        v14 = v24;
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_56;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_9:
    LOBYTE(v61[0]) = 0;
    *&v63 = 0;
    LOBYTE(v51[0]) = 0;
    LOBYTE(v49[0]) = 0;
    if (__CFStringIsCF())
    {

LABEL_14:
      v5 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_25;
    }

    v15 = v9;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v18 = v16;
      v19 = v17;

      v14 = v19;
      v5 = v18;
      goto LABEL_25;
    }

    *&v63 = [v15 length];
    if (!v63)
    {

      goto LABEL_14;
    }

    v27 = String.init(_cocoaString:)();
    v28 = v29;
LABEL_24:

    v14 = v28;
    v5 = v27;
    goto LABEL_25;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v13 = v12;

  v14 = v13;
  v5 = v11;
LABEL_25:
  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v5, v14, 1, v61);
  v69 = v61[6];
  *v70 = v61[7];
  *&v70[16] = v62[0];
  *&v70[26] = *(v62 + 10);
  v65 = v61[2];
  v66 = v61[3];
  v67 = v61[4];
  v68 = v61[5];
  v63 = v61[0];
  v64 = v61[1];
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v63) == 1)
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v57 = v67;
  v58 = v68;
  v59 = v69;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v56 = v66;
  WORD4(v60[2]) = *&v70[40];
  *(&v60[1] + 8) = *&v70[24];
  *(v60 + 8) = *&v70[8];
  *&v60[0] = *v70;
  URLComponents.path.getter();
  v30 = String._bridgeToObjectiveCImpl()();

  v31 = [v30 stringByAppendingPathComponent_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v31)
  {
    goto LABEL_44;
  }

  v32 = _objc_isTaggedPointer(v31);
  v33 = v31;
  v34 = v33;
  if (!v32)
  {
LABEL_33:
    LOBYTE(v49[0]) = 0;
    *&v51[0] = 0;
    if (__CFStringIsCF())
    {
      v36 = *&v51[0];

      v38 = 0xE000000000000000;
      goto LABEL_48;
    }

    v39 = v34;
    v40 = String.init(_nativeStorage:)();
    if (v41)
    {
      v36 = v40;
      v38 = v41;

      goto LABEL_48;
    }

    *&v51[0] = [v39 length];
    if (!*&v51[0])
    {

LABEL_44:
      v36 = 0;
      v38 = 0xE000000000000000;
      goto LABEL_48;
    }

    v36 = String.init(_cocoaString:)();
    v38 = v45;
LABEL_47:

LABEL_48:
    BYTE8(v53) = 0;
    BYTE14(v53) = 0;
    if ((v38 & 0x2000000000000000) != 0)
    {
      if ((v38 & 0xF00000000000000) != 0)
      {
        goto LABEL_50;
      }
    }

    else if ((v36 & 0xFFFFFFFFFFFFLL) != 0)
    {
LABEL_50:
      v46 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v36, v38, 0);
      v48 = v47;

LABEL_53:

      *(&v59 + 1) = v46;
      *&v60[0] = v48;
      v50[0] = v60[1];
      *(v50 + 10) = *(&v60[1] + 10);
      v49[2] = v55;
      v49[3] = v56;
      v49[4] = v57;
      v49[5] = v58;
      v49[0] = v53;
      v49[1] = v54;
      v49[6] = v59;
      v49[7] = v60[0];
      outlined init with copy of URLComponents(v49, v51);
      URLComponents.url.getter(a1);
      v51[6] = v59;
      v51[7] = v60[0];
      v52[0] = v60[1];
      *(v52 + 10) = *(&v60[1] + 10);
      v51[2] = v55;
      v51[3] = v56;
      v51[4] = v57;
      v51[5] = v58;
      v51[0] = v53;
      v51[1] = v54;
      outlined destroy of URLComponents(v51);
      outlined destroy of URLComponents(v49);
      return;
    }

    v46 = 0;
    v48 = 0xE000000000000000;
    goto LABEL_53;
  }

  v35 = _objc_getTaggedPointerTag(v33);
  if (!v35)
  {
    goto LABEL_40;
  }

  if (v35 != 22)
  {
    if (v35 == 2)
    {
      MEMORY[0x1EEE9AC00](v35);
      v36 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v38 = v37;

      goto LABEL_48;
    }

    goto LABEL_33;
  }

  v42 = [v34 UTF8String];
  if (v42)
  {
    v43 = String.init(utf8String:)(v42);
    if (v44)
    {
LABEL_41:
      v36 = v43;
      v38 = v44;

      goto LABEL_47;
    }

    __break(1u);
LABEL_40:
    _CFIndirectTaggedPointerStringGetContents();
    v43 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v44)
    {
      [v34 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v38 = *(&v49[0] + 1);
      v36 = *&v49[0];
      goto LABEL_47;
    }

    goto LABEL_41;
  }

LABEL_56:
  __break(1u);
}

unint64_t specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8, char a9, unint64_t a10, unint64_t a11)
{
  v12 = a11;
  v99 = a2;
  if ((a5 & 1) == 0 && (a6 & 1) == 0)
  {
    if ((a7 & 1) == 0)
    {
      return specialized BidirectionalCollection._range<A>(of:anchored:backwards:)(a1, a2, a3, a4, a8 & 1, a9 & 1, a10, a11);
    }

LABEL_6:
    if (a9)
    {
LABEL_7:
      v96 = a6;
      v90 = a8;
      v14 = a10;
      v15 = Substring.index(_:offsetBy:)();
      a2 = v99;
      v13 = v15;
      v89 = 0;
      goto LABEL_22;
    }

    if ((a8 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (a7)
  {
    goto LABEL_6;
  }

  if (a9)
  {
    if (a6)
    {
      goto LABEL_7;
    }

    v96 = a6;
    v90 = a8;
    v16 = a1 >> 14;
    v13 = a11;
    if (a1 >> 14 < a2 >> 14)
    {
      v13 = a11;
      while (a10 >> 14 < v13 >> 14)
      {
        v17 = Substring.index(before:)();
        v13 = Substring.index(before:)();
        if (v16 >= v17 >> 14)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

LABEL_14:
    v89 = 0;
    if (v90)
    {
      v14 = v13;
    }

    else
    {
      v14 = a10;
    }

    a2 = v99;
  }

  else
  {
    if (a8)
    {
LABEL_21:
      v96 = a6;
      v89 = 1;
      v90 = a8;
      v13 = a10;
      v14 = a10;
      goto LABEL_22;
    }

    if (a6)
    {
LABEL_19:
      v96 = a6;
      v90 = a8;
      v13 = a10;
      v18 = Substring.index(_:offsetBy:)();
      a2 = v99;
      v14 = v18;
      v89 = 1;
      goto LABEL_22;
    }

    v96 = a6;
    v90 = a8;
    v83 = a1 >> 14;
    if (a1 >> 14 >= a2 >> 14)
    {
      v89 = 1;
      v14 = a11;
      v13 = a10;
    }

    else
    {
      v14 = a11;
      do
      {
        if (a10 >> 14 >= v14 >> 14)
        {
          return 0;
        }

        v84 = Substring.index(before:)();
        v14 = Substring.index(before:)();
      }

      while (v83 < v84 >> 14);
      v89 = 1;
      v13 = a10;
      a2 = v99;
    }
  }

LABEL_22:
  v19 = v14 >> 14;
  v119 = 1;
  v93 = a1 >> 14;
  v106 = a2 >> 14;
  v91 = v19;
LABEL_23:
  v118 = v13;
  if (v93 >= v106)
  {
    if (v93 == v106)
    {
      if (v96)
      {
        v20 = 0;
        v74 = v13;
        goto LABEL_189;
      }

      if (!(v89 & 1 | ((v90 & 1) == 0)) && (v13 ^ v12) >= 0x4000)
      {
        return 0;
      }

      v119 = 0;
      return v13;
    }

    if (v19 == v13 >> 14)
    {
      return 0;
    }

    v20 = 0;
    goto LABEL_172;
  }

  v112 = v11;
  v20 = 0;
  LOBYTE(v21) = 0;
  v22 = 0;
  v102 = 0;
  v110 = 0;
  v98 = 0;
  v101 = 0;
  v114 = 0;
  v115 = 0xE000000000000000;
  v92 = v13;
  v103 = v13;
  v109 = 15;
  v23 = 15;
  v24 = a1;
  v25 = 15;
  v26 = 15;
  v107 = 15;
  v27 = a1 >> 14;
  v28 = 0xE000000000000000;
LABEL_25:
  v29 = 0;
  v105 = v24 >> 14;
  v11 = v112;
  v30 = v113;
  v31 = v115;
  while (1)
  {
    v108 = v22;
    v104 = v27;
    v116 = v31;
    if (v21)
    {
      v32 = v28;
      v33 = String.subscript.getter();
      v35 = v34;
      if (v20)
      {
      }

      v111 = String.index(after:)();
      v26 = v111;
      v109 = v111;
      v107 = v111;
      if (v29)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((v103 ^ a11) < 0x4000)
      {
        v74 = v103;
        v118 = v103;
        if (v27 == v106)
        {
          v12 = a11;
          v13 = v92;
          if (v96)
          {
            goto LABEL_189;
          }

LABEL_200:
          v87 = v74;

          v86 = v87;
          goto LABEL_201;
        }

        v19 = v91;
        v12 = a11;
        if (v91 == v92 >> 14)
        {

          if ((v20 & 1) == 0)
          {
            return 0;
          }

LABEL_192:

          goto LABEL_197;
        }

LABEL_134:
        v113 = v30;
        goto LABEL_172;
      }

      v32 = v28;
      v111 = v25;
      v33 = Substring.subscript.getter();
      v35 = v38;
      if (v20)
      {
      }

      if (v29)
      {
LABEL_30:
        v36 = String.subscript.getter();
        v113 = v37;
        if (v20)
        {
        }

        v23 = String.index(after:)();
        goto LABEL_39;
      }
    }

    v36 = Substring.subscript.getter();
    v113 = v39;
    if (v20)
    {
    }

LABEL_39:
    v40 = v113;
    v112 = v35;
    if (v33 == v36 && v35 == v113 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v28 = v32;
      v31 = v116;
      if ((v21 & 1) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_43;
    }

    if (v21)
    {
      if (v29)
      {
        v26 = v107;
        countAndFlagsBits = v101;
        v28 = v32;
        v31 = v116;
        goto LABEL_48;
      }

      countAndFlagsBits = v108;
      object = v32;
      v25 = v111;
      if (v33 == v36)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v54 = Character._transform(toHalfWidth:stripDiacritics:caseFolding:)(a5 & 1, v96 & 1, a7 & 1);
      v55 = (v54._object >> 56) & 0xF;
      if ((v54._object & 0x2000000000000000) == 0)
      {
        v55 = v54._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v55)
      {

        if (v29)
        {
          v74 = v103;
          v118 = v103;
          if (v104 == v106)
          {
            v12 = a11;
            v13 = v92;
            if (v96)
            {
              v20 = 1;
              goto LABEL_189;
            }

            v86 = v103;
            v20 = 1;
            if (v89 & 1 | ((v90 & 1) == 0))
            {
              goto LABEL_203;
            }

            goto LABEL_202;
          }

          v19 = v91;
          v12 = a11;
          v11 = v35;
          if (v91 == v92 >> 14)
          {
            goto LABEL_196;
          }

          v20 = 1;
          goto LABEL_172;
        }

        v59 = 0;
        v110 = v108;
        object = v32;
        v25 = v111;
        goto LABEL_93;
      }

      countAndFlagsBits = v54._countAndFlagsBits;
      v33 = String.subscript.getter();
      v57 = v56;

      v112 = v57;
      object = v54._object;
      v58 = String.index(after:)();
      v109 = v58;
      v25 = v58;
      if (v29)
      {
        v26 = v58;
        v114 = v54._countAndFlagsBits;
        v31 = v116;
        v40 = v113;
        v28 = v54._object;
LABEL_49:
        v42 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v42 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        v43 = 4 * v42;
        if (4 * v42 == v26 >> 14)
        {
          v44 = 1;
          if ((v28 & 0x2000000000000000) == 0)
          {
LABEL_53:
            v107 = v26;
            v101 = countAndFlagsBits;
            v45 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
            goto LABEL_85;
          }

LABEL_83:
          v107 = v26;
          v101 = countAndFlagsBits;
        }

        else
        {
          v113 = v40;
          v46 = HIBYTE(v31) & 0xF;
          if ((v31 & 0x2000000000000000) == 0)
          {
            v46 = v98 & 0xFFFFFFFFFFFFLL;
          }

          v47 = 4 * v46;
          if (4 * v46 != v23 >> 14)
          {
            do
            {
              v48 = String.subscript.getter();
              v50 = v49;
              if (v48 == String.subscript.getter() && v50 == v51)
              {
              }

              else
              {
                v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v52 & 1) == 0)
                {
                  v117 = v109;
                  v118 = v103;
                  if (v104 == v106)
                  {
                    v22 = countAndFlagsBits;
                    v11 = v112;
                    v30 = v113;
                    goto LABEL_137;
                  }

                  v19 = v91;
                  v12 = a11;
                  if (v91 != v92 >> 14)
                  {
                    v20 = 1;
                    goto LABEL_141;
                  }

LABEL_196:

LABEL_197:

                  return 0;
                }
              }

              v26 = String.index(after:)();
              v53 = String.index(after:)();
              v23 = v53;
              if (v43 == v26 >> 14)
              {
                v109 = v26;
                v25 = v26;
                v102 = v98;
                v40 = v113;
                v44 = 1;
                if ((v28 & 0x2000000000000000) == 0)
                {
                  goto LABEL_53;
                }

                goto LABEL_83;
              }

              v25 = v26;
              v109 = v26;
            }

            while (v47 != v53 >> 14);
          }

          v44 = 1;
          if ((v28 & 0x2000000000000000) == 0)
          {
            v102 = v98;
            v107 = v26;
            v101 = countAndFlagsBits;
            v40 = v113;
            v45 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
            goto LABEL_85;
          }

          v102 = v98;
          v107 = v26;
          v101 = countAndFlagsBits;
          v40 = v113;
        }

        goto LABEL_84;
      }

      v26 = v58;
      v107 = v58;
      v101 = v54._countAndFlagsBits;
      v114 = v54._countAndFlagsBits;
      v40 = v113;
      if (v33 == v36)
      {
LABEL_78:
        if (v112 == v40)
        {
          goto LABEL_80;
        }
      }
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_80:
      v44 = 0;
      v31 = v116;
      v28 = object;
      if ((object & 0x2000000000000000) == 0)
      {
LABEL_81:
        v45 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    v110 = countAndFlagsBits;
    v59 = 1;
LABEL_93:
    v63 = Character._transform(toHalfWidth:stripDiacritics:caseFolding:)(a5 & 1, v96 & 1, a7 & 1);
    v64 = v63._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v63._object & 0x2000000000000000) != 0)
    {
      v65 = (v63._object >> 56) & 0xF;
    }

    else
    {
      v65 = v63._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v29 = v65 != 0;
    if (v65)
    {
      String.subscript.getter();
      v113 = v66;

      v67 = String.index(after:)();
      v64 = v63._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v23 = v67;
      v102 = v63._countAndFlagsBits;
      v98 = v63._countAndFlagsBits;
      v116 = v63._object;
    }

    if ((v63._object & 0x2000000000000000) != 0)
    {
      v64 = (v63._object >> 56) & 0xF;
    }

    if (!v64)
    {
      break;
    }

    v111 = v25;
    if (v33 != String.subscript.getter() || v112 != v68)
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v69)
      {
        v108 = v110;
        v28 = object;
        v40 = v113;
        v31 = v116;
        if ((v59 & 1) == 0)
        {
LABEL_104:
          if (!v29)
          {
            v115 = v31;
            v73 = v108;
            v25 = v111;
LABEL_122:
            v113 = v40;
            v103 = Substring.index(after:)();
            v21 = 0;
            v72 = v73;
            v110 = v73;
            goto LABEL_123;
          }

          v60 = 0;
          v61 = v110;
          v25 = v111;
          v22 = v108;
          if ((v31 & 0x2000000000000000) != 0)
          {
            goto LABEL_91;
          }

          goto LABEL_106;
        }

        goto LABEL_43;
      }

      v74 = v103;
      v117 = v109;
      v118 = v103;
      v79 = v113;
      v28 = object;
      if (v104 != v106)
      {
        v19 = v91;
        v12 = a11;
        if (v91 == v92 >> 14)
        {
          goto LABEL_196;
        }

        goto LABEL_166;
      }

      v12 = a11;
      v13 = v92;
      if (!v59)
      {
        if (v96)
        {
          v20 = 1;
          goto LABEL_189;
        }

        v86 = v103;
        v88 = v89 | ~v90;
        v20 = 1;
        goto LABEL_228;
      }

      if (v96)
      {
        v22 = v110;
        v30 = v113;
        v11 = v112;
        goto LABEL_138;
      }

      v76 = 0;
      v78 = object;
      v77 = v110;
      if ((object & 0x2000000000000000) != 0)
      {
LABEL_168:
        v80 = HIBYTE(v78) & 0xF;
        goto LABEL_169;
      }

LABEL_150:
      v80 = v77 & 0xFFFFFFFFFFFFLL;
LABEL_169:
      v11 = v112;
      if (v117 >> 14 == 4 * v80)
      {
        v81 = Substring.index(after:)();
        v82 = v81;
        v118 = v81;
        if (v76)
        {
          v20 = 1;
          v74 = v81;
          goto LABEL_189;
        }

        v20 = 1;
        v86 = v82;
        if (v89 & 1 | ((v90 & 1) == 0))
        {
          goto LABEL_203;
        }

        goto LABEL_202;
      }

      v19 = v91;
      if (v91 == v13 >> 14)
      {
        goto LABEL_196;
      }

      v113 = v79;
      v20 = 1;
LABEL_172:
      v13 = Substring.index(_:offsetBy:)();

      if (v20)
      {
      }

      goto LABEL_23;
    }

    v108 = v110;
    v31 = v116;
    v40 = v113;
    v28 = object;
    if ((v59 & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_43:
    if (v29)
    {
      v26 = v107;
      countAndFlagsBits = v101;
LABEL_48:
      v25 = v111;
      goto LABEL_49;
    }

    v44 = 0;
    countAndFlagsBits = v110;
    v25 = v111;
    if ((v28 & 0x2000000000000000) == 0)
    {
      goto LABEL_81;
    }

LABEL_84:
    v45 = HIBYTE(v28) & 0xF;
LABEL_85:
    v22 = countAndFlagsBits;
    if (v26 >> 14 == 4 * v45)
    {
      if ((v44 & 1) == 0)
      {
        v115 = v31;
LABEL_121:
        v73 = v22;
        goto LABEL_122;
      }

      v60 = 0;
      v61 = countAndFlagsBits;
      if ((v31 & 0x2000000000000000) != 0)
      {
LABEL_91:
        v62 = HIBYTE(v31) & 0xF;
        goto LABEL_107;
      }
    }

    else
    {
      if ((v44 & 1) == 0)
      {
        v115 = v31;
        v113 = v40;
        v21 = 1;
        v72 = v22;
        v110 = v22;
LABEL_123:
        v24 = Substring.index(after:)();
        v27 = v24 >> 14;
        v20 = 1;
        v22 = v72;
        if (v24 >> 14 < v106)
        {
          goto LABEL_25;
        }

        v74 = v103;
        v117 = v109;
        v118 = v103;
        if (v24 >> 14 != v106)
        {
          v19 = v91;
          v12 = a11;
          if (v91 == v92 >> 14)
          {
            goto LABEL_196;
          }

LABEL_141:
          v11 = v112;
          goto LABEL_172;
        }

        v12 = a11;
        v13 = v92;
        if (!v21)
        {
          if (v96)
          {
            goto LABEL_189;
          }

          v86 = v103;
          v88 = v89 | ~v90;
LABEL_228:
          if (v88)
          {
            goto LABEL_203;
          }

          goto LABEL_202;
        }

LABEL_147:
        v11 = v112;
        v30 = v113;
        if (v96)
        {
LABEL_138:
          v75 = v22;
          specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(&v117, v114, v28);
          v76 = 1;
          v77 = v75;
          goto LABEL_149;
        }

LABEL_148:
        v76 = 0;
        v77 = v22;
LABEL_149:
        v78 = v28;
        v79 = v30;
        v112 = v11;
        if ((v28 & 0x2000000000000000) != 0)
        {
          goto LABEL_168;
        }

        goto LABEL_150;
      }

      v60 = 1;
      v61 = countAndFlagsBits;
      if ((v31 & 0x2000000000000000) != 0)
      {
        goto LABEL_91;
      }
    }

LABEL_106:
    v62 = v102 & 0xFFFFFFFFFFFFLL;
LABEL_107:
    v30 = v40;
    v11 = v112;
    v110 = v61;
    if (v23 >> 14 == 4 * v62)
    {
      v115 = v31;
      if (v60)
      {
        v72 = v22;
        v21 = 1;
        v113 = v40;
        goto LABEL_123;
      }

      goto LABEL_121;
    }

    if (v60)
    {
      v20 = 1;
      v29 = 1;
      LOBYTE(v21) = 1;
      v27 = v105;
      if (v105 >= v106)
      {
        v117 = v109;
        v118 = v103;
        if (v105 != v106)
        {
          v19 = v91;
          if (v91 == v92 >> 14)
          {
            goto LABEL_196;
          }

          v113 = v30;
          v12 = a11;
          goto LABEL_172;
        }

LABEL_137:
        v12 = a11;
        v13 = v92;
        if (v96)
        {
          goto LABEL_138;
        }

        goto LABEL_148;
      }
    }

    else
    {
      v70 = v22;
      v71 = Substring.index(after:)();
      v22 = v70;
      v11 = v112;
      v103 = v71;
      LOBYTE(v21) = 0;
      v20 = 1;
      v29 = 1;
      v110 = v22;
      v27 = v105;
      if (v105 >= v106)
      {
        v74 = v71;
        v118 = v71;
        if (v105 == v106)
        {
          v12 = a11;
          v13 = v92;
          if ((v96 & 1) == 0)
          {
            goto LABEL_200;
          }

LABEL_189:
          if (v74 >> 14 >= v12 >> 14)
          {
            goto LABEL_200;
          }

          specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(&v118, a10, v12);

          v86 = v118;
LABEL_201:
          if (v89 & 1 | ((v90 & 1) == 0))
          {
            goto LABEL_203;
          }

LABEL_202:
          if ((v86 ^ v12) < 0x4000)
          {
            goto LABEL_203;
          }

          v13 = 0;
          if ((v20 & 1) == 0)
          {
            return v13;
          }

LABEL_205:

          return v13;
        }

        v19 = v91;
        v12 = a11;
        if (v91 == v92 >> 14)
        {

          goto LABEL_192;
        }

        goto LABEL_134;
      }
    }
  }

  v118 = v103;
  v117 = v109;

  if (v104 != v106)
  {
    v19 = v91;
    v12 = a11;
    if (v91 == v92 >> 14)
    {
      goto LABEL_196;
    }

LABEL_166:
    v20 = 1;
    v11 = v112;
    goto LABEL_172;
  }

  v12 = a11;
  v13 = v92;
  v28 = object;
  if (v59)
  {
    v22 = v110;
    goto LABEL_147;
  }

  if (v96)
  {
    v20 = 1;
    v74 = v103;
    goto LABEL_189;
  }

  v20 = 1;
  v86 = v103;
  if (!(v89 & 1 | ((v90 & 1) == 0)))
  {
    goto LABEL_202;
  }

LABEL_203:
  if (v86 >> 14 >= v13 >> 14)
  {
    v119 = 0;
    if ((v20 & 1) == 0)
    {
      return v13;
    }

    goto LABEL_205;
  }

  __break(1u);
  return result;
}

unint64_t specialized BidirectionalCollection._range<A>(of:anchored:backwards:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, unint64_t a7, unint64_t a8)
{
  v8 = a8;
  v9 = a7;
  if (a6)
  {
    v12 = a8;
    v28 = a1 >> 14;
    v31 = a2 >> 14;
    if (a1 >> 14 < a2 >> 14)
    {
      v13 = a7 >> 14;
      v12 = a8;
      while (v13 < v12 >> 14)
      {
        v14 = Substring.index(before:)();
        v12 = Substring.index(before:)();
        if (v28 >= v14 >> 14)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }

LABEL_6:
    v9 = a7;
    if (a5)
    {
      v15 = v12;
    }

    else
    {
      v15 = a7;
    }
  }

  else
  {
    if (a5)
    {
      v31 = a2 >> 14;
      v28 = a1 >> 14;
      v15 = a7;
    }

    else
    {
      v28 = a1 >> 14;
      v31 = a2 >> 14;
      if (a1 >> 14 < a2 >> 14)
      {
        v17 = a7 >> 14;
        v15 = a8;
        while (v17 < v15 >> 14)
        {
          v18 = Substring.index(before:)();
          v15 = Substring.index(before:)();
          if (v28 >= v18 >> 14)
          {
            v9 = a7;
            v12 = a7;
            goto LABEL_18;
          }
        }

        return 0;
      }

      v15 = a8;
    }

    v12 = a7;
  }

LABEL_18:
  v30 = v8 >> 14;
  while (1)
  {
    v29 = v12;
    v19 = v28;
    if (v28 < v31)
    {
      v19 = v28;
      if (v12 >> 14 < v30)
      {
        v19 = v28;
        do
        {
          v20 = v9;
          v21 = v8;
          v22 = Substring.subscript.getter();
          v24 = v23;
          if (v22 == Substring.subscript.getter() && v24 == v25)
          {
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v26 & 1) == 0)
            {
              v8 = v21;
              v9 = v20;
              break;
            }
          }

          v9 = v20;
          v8 = v21;
          v12 = Substring.index(after:)();
          v19 = Substring.index(after:)() >> 14;
        }

        while (v19 < v31 && v12 >> 14 < v30);
      }
    }

    if (v19 == v31)
    {
      break;
    }

    if (v15 >> 14 == v29 >> 14)
    {
      return 0;
    }

    v12 = Substring.index(_:offsetBy:)();
  }

  result = v29;
  if (v12 >> 14 < v29 >> 14)
  {
    __break(1u);
  }

  return result;
}

uint64_t URL._appending<A>(components:directoryHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v50 = a3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v39 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v39 - v15;
  v40 = *v16;
  v17 = v4[1];
  v18 = *v4;
  swift_unknownObjectRetain();
  v19 = _ArrayBuffer.requestNativeBuffer()();
  if (!v19)
  {
    v54 = a1;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v19 = _copyCollectionToContiguousArray<A>(_:)();
  }

  v56 = v19;
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeLast()();
  v20 = v56;
  result = MEMORY[0x1865CB560](v56, a2);
  v42 = a4;
  if (!result)
  {

    v31 = *(v8 + 16);
    v22 = v18;
LABEL_17:
    v32 = v43;
    v31(v41, v43, a2);
    v54 = String.init<A>(_:)();
    v55 = v33;
    ObjectType = swift_getObjectType();
    v51 = v40;
    v35 = *(v17 + 360);
    v36 = lazy protocol witness table accessor for type String and conformance String();
    v35(&v52, &v54, &v51, MEMORY[0x1E69E6158], v36, ObjectType, v17);
    (*(v8 + 8))(v32, a2);

    v37 = v52;
    if (v52)
    {
      v17 = v53;
      result = swift_unknownObjectRelease();
      v38 = v42;
    }

    else
    {
      v38 = v42;
      v37 = v22;
    }

    *v38 = v37;
    v38[1] = v17;
    return result;
  }

  if (result >= 1)
  {
    v22 = v18;
    v23 = 0;
    v44 = v20 & 0xC000000000000001;
    v24 = (v8 + 16);
    v48 = (v8 + 16);
    v49 = v8;
    v46 = result;
    v47 = v20;
    do
    {
      if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && v44)
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v39 != 8)
        {
          goto LABEL_22;
        }

        v54 = result;
        v45 = *v24;
        v45(v12, &v54, a2);
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23;
        v45 = *(v8 + 16);
        v45(v12, v25, a2);
      }

      v54 = String.init<A>(_:)();
      v55 = v26;
      v27 = swift_getObjectType();
      v51 = 0;
      v28 = *(v17 + 360);
      v29 = lazy protocol witness table accessor for type String and conformance String();
      v30 = v22;
      v28(&v52, &v54, &v51, MEMORY[0x1E69E6158], v29, v27, v17);

      v22 = v52;
      if (v52)
      {
        v17 = v53;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = v30;
      }

      ++v23;
      v20 = v47;
      v24 = v48;
      v8 = v49;
    }

    while (v46 != v23);

    v31 = v45;
    goto LABEL_17;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t URL.isFileURL.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 144))(ObjectType, v1) & 1;
}

void _BridgedURL.appending<A>(component:directoryHint:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v156 = a5;
  v176[1] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v11 = MEMORY[0x1EEE9AC00](ObjectType);
  v13 = *a2;
  (*(v14 + 16))(v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v11);
  v15 = String.init<A>(_:)();
  v17 = v16;
  v157 = v15;
  v18 = specialized BidirectionalCollection.last.getter(v15, v16) & 0x1FF;
  v155 = v18;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v19 = v18 == 47;
      if ([*&v5[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] isFileURL])
      {
        v19 = 2;
      }
    }

    else
    {
      v19 = v18 == 47;
    }
  }

  else
  {
    v19 = v13 == 0;
  }

  v20 = [*&v5[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] _cfurl];
  v21 = v20;
  if (v19 != 2)
  {
    String._bridgeToObjectiveCImpl()();
    v24 = v21;
    v25 = _CFURLCreateCopyAppendingPathComponent();

    swift_unknownObjectRelease();
    if (v25)
    {

      if (_foundation_swift_nsurl_feature_enabled())
      {
        type metadata accessor for _NSSwiftURL();
        v26 = swift_dynamicCastClass();
        v27 = v156;
        if (v26)
        {
          v28 = v26;
          type metadata accessor for _BridgedNSSwiftURL();
          *(swift_allocObject() + 16) = v28;
          v29 = v25;
          v30 = _BridgedNSSwiftURL.convertingFileReference()();
          v32 = v31;
        }

        else
        {
          v47 = objc_allocWithZone(ObjectType);
          *&v47[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v25;
          v163.receiver = v47;
          v163.super_class = ObjectType;
          v48 = v25;
          v49 = objc_msgSendSuper2(&v163, sel_init);
          v30 = _BridgedURL.convertingFileReference()();

          v32 = &protocol witness table for _BridgedURL;
        }
      }

      else
      {
        v33 = objc_allocWithZone(ObjectType);
        *&v33[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v25;
        v164.receiver = v33;
        v164.super_class = ObjectType;
        v34 = v25;
        v35 = objc_msgSendSuper2(&v164, sel_init);
        v30 = _BridgedURL.convertingFileReference()();

        v32 = &protocol witness table for _BridgedURL;
        v27 = v156;
      }

      goto LABEL_165;
    }

    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v151[0] = v20;
  LOBYTE(v165) = 1;
  _BridgedURL.appending<A>(component:directoryHint:)(&v173, a1, &v165, a3, a4);
  v22 = v173;
  if (v173)
  {
    v23 = v174;
  }

  else
  {
    v22 = v5;
    v23 = &protocol witness table for _BridgedURL;
  }

  v176[0] = *MEMORY[0x1E695DB78];
  v36 = v176[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd);
  v37 = static _SetStorage.allocate(capacity:)();
  isTaggedPointer = _objc_isTaggedPointer(v36);
  v39 = v36;
  v27 = v39;
  v161 = isTaggedPointer;
  v151[1] = v17;
  v152 = ObjectType;
  v153 = v23;
  v154 = v22;
  if ((isTaggedPointer & 1) == 0)
  {
LABEL_22:
    LOBYTE(v165) = 0;
    v173 = 0;
    LOBYTE(v167) = 0;
    v172 = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v44 = v173;
      if (!v173)
      {

        v42 = 0xE000000000000000;
        goto LABEL_50;
      }

      if (v172 == 1)
      {
        if (v165)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        v42 = v53;
        goto LABEL_50;
      }

      if (v167)
      {
        if (v165 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          v151[-4] = v27;
          v151[-3] = &v173;
          LODWORD(v151[-2]) = 1536;
          v151[-1] = v44;
        }

        else
        {
          v54 = [v27 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v54);
          v151[-4] = v27;
          v151[-3] = &v173;
          LODWORD(v151[-2]) = 134217984;
          v151[-1] = v55;
        }

        v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v42 = v57;
        v58 = (v57 >> 56) & 0xF;
        if ((v57 & 0x2000000000000000) == 0)
        {
          v58 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v58)
        {

          goto LABEL_50;
        }
      }
    }

    else
    {
      v45 = v27;
      String.init(_nativeStorage:)();
      if (v46)
      {
        v42 = v46;

        goto LABEL_50;
      }

      v173 = [v45 length];
      if (!v173)
      {

        v42 = 0xE000000000000000;
        goto LABEL_50;
      }
    }

    String.init(_cocoaString:)();
    v42 = v52;
    goto LABEL_50;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v39);
  if (!TaggedPointerTag)
  {
    goto LABEL_34;
  }

  if (TaggedPointerTag == 22)
  {
    v50 = [v27 UTF8String];
    if (!v50)
    {
LABEL_178:
      __break(1u);
      return;
    }

    String.init(utf8String:)(v50);
    if (v51)
    {
LABEL_35:
      v42 = v51;

      goto LABEL_50;
    }

    __break(1u);
LABEL_34:
    v167 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v51)
    {
      [v27 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v42 = v166;
      goto LABEL_50;
    }

    goto LABEL_35;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_22;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v151[-2] = v27;
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v42 = v41;

LABEL_50:
  Hasher.init(_seed:)();
  String.hash(into:)();
  v59 = Hasher._finalize()();

  v60 = -1 << *(v37 + 32);
  v61 = v59 & ~v60;
  v62 = v61 >> 6;
  v162 = v37 + 56;
  v63 = *(v37 + 56 + 8 * (v61 >> 6));
  v64 = 1 << v61;
  v158 = v37;
  if (((1 << v61) & v63) == 0)
  {
LABEL_134:
    *(v162 + 8 * v62) = v64 | v63;
    *(*(v37 + 48) + 8 * v61) = v27;
    v113 = *(v37 + 16);
    v114 = __OFADD__(v113, 1);
    v115 = v113 + 1;
    if (!v114)
    {
      *(v37 + 16) = v115;
      goto LABEL_138;
    }

    goto LABEL_168;
  }

  v159 = ~v60;
  v160 = v27;
  while (1)
  {
    v65 = *(*(v37 + 48) + 8 * v61);
    v66 = _objc_isTaggedPointer(v65);
    v67 = v65;
    v68 = v67;
    if (!v66)
    {
      goto LABEL_57;
    }

    v69 = _objc_getTaggedPointerTag(v67);
    if (v69)
    {
      if (v69 == 22)
      {
        v77 = [v68 UTF8String];
        if (!v77)
        {
          goto LABEL_172;
        }

        v78 = String.init(utf8String:)(v77);
        if (!v79)
        {
          goto LABEL_171;
        }

LABEL_70:
        v42 = v78;
        v71 = v79;
      }

      else
      {
        if (v69 == 2)
        {
          MEMORY[0x1EEE9AC00](v69);
          v151[-2] = v68;
          v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v71 = v70;

          goto LABEL_91;
        }

LABEL_57:
        LOBYTE(v165) = 0;
        v173 = 0;
        LOBYTE(v167) = 0;
        v172 = 0;
        v72 = __CFStringIsCF();
        if (!v72)
        {
          v74 = v68;
          v75 = String.init(_nativeStorage:)();
          if (v76)
          {
            v42 = v75;
            v71 = v76;

            goto LABEL_91;
          }

          v173 = [v74 length];
          if (!v173)
          {

            goto LABEL_65;
          }

          goto LABEL_89;
        }

        v73 = v173;
        if (!v173)
        {

LABEL_65:
          v42 = 0;
          v71 = 0xE000000000000000;
          goto LABEL_91;
        }

        if (v172 == 1)
        {
          if (v165)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v83 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_90;
        }

        if ((v167 & 1) == 0)
        {
LABEL_89:
          v83 = String.init(_cocoaString:)();
LABEL_90:
          v42 = v83;
          v71 = v84;
          goto LABEL_91;
        }

        if (v165 == 1)
        {
          MEMORY[0x1EEE9AC00](v72);
          v151[-4] = v68;
          v151[-3] = &v173;
          LODWORD(v151[-2]) = 1536;
          v151[-1] = v73;
          v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v71 = v81;
          v82 = HIBYTE(v81) & 0xF;
          if ((v81 & 0x2000000000000000) == 0)
          {
            v82 = v80 & 0xFFFFFFFFFFFFLL;
          }

          if (v82)
          {
            v42 = v80;

            v37 = v158;
            goto LABEL_91;
          }

          v37 = v158;
          goto LABEL_88;
        }

        v85 = [v68 lengthOfBytesUsingEncoding_];
        MEMORY[0x1EEE9AC00](v85);
        v151[-4] = v68;
        v151[-3] = &v173;
        LODWORD(v151[-2]) = 134217984;
        v151[-1] = v86;
        v87 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v71 = v88;
        v89 = HIBYTE(v88) & 0xF;
        if ((v88 & 0x2000000000000000) == 0)
        {
          v89 = v87 & 0xFFFFFFFFFFFFLL;
        }

        if (!v89)
        {
LABEL_88:

          goto LABEL_89;
        }

        v42 = v87;
      }

      goto LABEL_91;
    }

    v167 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v78 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v79)
    {
      goto LABEL_70;
    }

    [v68 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v42 = v165;
    v71 = v166;
LABEL_91:
    v90 = v27;
    v91 = v90;
    if (!v161)
    {
      goto LABEL_96;
    }

    v92 = _objc_getTaggedPointerTag(v90);
    switch(v92)
    {
      case 0:
        v167 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v102 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v103)
        {
          [v91 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v95 = v166;
          if (v42 != v165)
          {
            goto LABEL_132;
          }

          goto LABEL_131;
        }

        goto LABEL_109;
      case 0x16:
        v101 = [v91 UTF8String];
        if (!v101)
        {
          goto LABEL_174;
        }

        v102 = String.init(utf8String:)(v101);
        if (!v103)
        {
          goto LABEL_173;
        }

LABEL_109:
        v104 = v102;
        v95 = v103;

        if (v42 != v104)
        {
          goto LABEL_132;
        }

        goto LABEL_131;
      case 2:
        MEMORY[0x1EEE9AC00](v92);
        v151[-2] = v91;
        v93 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v95 = v94;

        goto LABEL_126;
    }

LABEL_96:
    LOBYTE(v165) = 0;
    v173 = 0;
    LOBYTE(v167) = 0;
    v172 = 0;
    v96 = __CFStringIsCF();
    if (!v96)
    {
      v98 = v91;
      v99 = String.init(_nativeStorage:)();
      if (v100)
      {
        v93 = v99;
        v95 = v100;

        goto LABEL_126;
      }

      v173 = [v98 length];
      if (!v173)
      {

        v93 = 0;
        v95 = 0xE000000000000000;
        goto LABEL_126;
      }

      v37 = v158;
LABEL_129:
      v105 = String.init(_cocoaString:)();
      goto LABEL_130;
    }

    v97 = v173;
    if (!v173)
    {

      v95 = 0xE000000000000000;
      if (v42)
      {
        goto LABEL_132;
      }

      goto LABEL_131;
    }

    if (v172 != 1)
    {
      if (v167)
      {
        if (v165 == 1)
        {
          MEMORY[0x1EEE9AC00](v96);
          v151[-4] = v91;
          v151[-3] = &v173;
          LODWORD(v151[-2]) = 1536;
          v151[-1] = v97;
        }

        else
        {
          v107 = [v91 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v107);
          v151[-4] = v91;
          v151[-3] = &v173;
          LODWORD(v151[-2]) = 134217984;
          v151[-1] = v108;
        }

        v109 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v95 = v110;
        v111 = HIBYTE(v110) & 0xF;
        if ((v110 & 0x2000000000000000) == 0)
        {
          v111 = v109 & 0xFFFFFFFFFFFFLL;
        }

        if (v111)
        {
          v93 = v109;

LABEL_126:
          v37 = v158;
          if (v42 != v93)
          {
            goto LABEL_132;
          }

          goto LABEL_131;
        }

        v37 = v158;
      }

      goto LABEL_129;
    }

    if (v165)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v105 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_130:
    v95 = v106;
    if (v42 != v105)
    {
      goto LABEL_132;
    }

LABEL_131:
    if (v71 == v95)
    {

      goto LABEL_138;
    }

LABEL_132:
    v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v112)
    {
      break;
    }

    v27 = v160;
    v61 = (v61 + 1) & v159;
    v62 = v61 >> 6;
    v63 = *(v162 + 8 * (v61 >> 6));
    v64 = 1 << v61;
    if (((1 << v61) & v63) == 0)
    {
      goto LABEL_134;
    }
  }

LABEL_138:
  outlined destroy of NSURLResourceKey(v176);
  v116 = swift_getObjectType();
  v117 = (v153[54])(v116);
  v118 = *(v37 + 16);
  if (v118)
  {
    v119 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16NSURLResourceKeya_Tt1g5(*(v37 + 16), 0);
    v120 = specialized Sequence._copyContents(initializing:)(&v173, v119 + 4, v118, v37);
    v42 = v173;
    v27 = v175;

    outlined consume of Set<AnyKeyPath>.Iterator._Variant();
    if (v120 == v118)
    {
      v37 = v158;
      goto LABEL_141;
    }

    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    swift_once();
LABEL_153:
    swift_willThrow();
    goto LABEL_154;
  }

LABEL_141:
  type metadata accessor for NSURLResourceKey(0);
  v121 = _ContiguousArrayBuffer._asCocoaArray()();
  v173 = 0;
  v122 = [v117 resourceValuesForKeys:v121 error:&v173];

  swift_unknownObjectRelease();
  v123 = v173;
  v27 = v156;
  v42 = v152;
  if (!v122)
  {
    v126 = v173;

    if (!v126)
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        goto LABEL_169;
      }

      goto LABEL_153;
    }

    swift_willThrow();

LABEL_154:
    v136 = v151[0];
    String._bridgeToObjectiveCImpl()();
    v137 = v136;
    v138 = _CFURLCreateCopyAppendingPathComponent();

    swift_unknownObjectRelease();
    if (v138)
    {

      if (_foundation_swift_nsurl_feature_enabled())
      {
        type metadata accessor for _NSSwiftURL();
        v139 = swift_dynamicCastClass();
        if (v139)
        {
          v140 = v139;
          type metadata accessor for _BridgedNSSwiftURL();
          *(swift_allocObject() + 16) = v140;
          v141 = v138;
          v30 = _BridgedNSSwiftURL.convertingFileReference()();
          v32 = v142;
          swift_unknownObjectRelease();

LABEL_161:

          goto LABEL_165;
        }

        v146 = objc_allocWithZone(v42);
        *&v146[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v138;
        v170.receiver = v146;
        v170.super_class = v42;
        v147 = v138;
        v145 = objc_msgSendSuper2(&v170, sel_init);
      }

      else
      {
        v143 = objc_allocWithZone(v42);
        *&v143[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v138;
        v171.receiver = v143;
        v171.super_class = v42;
        v144 = v138;
        v145 = objc_msgSendSuper2(&v171, sel_init);
      }

      v148 = v145;
      v30 = _BridgedURL.convertingFileReference()();
      swift_unknownObjectRelease();

      v32 = &protocol witness table for _BridgedURL;
      goto LABEL_161;
    }

LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v173 = 0;
  v124 = v123;
  _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(v122, &v173);
  v125 = v173;
  if (!v173)
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v173 = v125;
  v174 = v37;
  if (URLResourceValues.isDirectory.getter() == 2)
  {

    goto LABEL_154;
  }

  String._bridgeToObjectiveCImpl()();
  v127 = v151[0];
  v128 = _CFURLCreateCopyAppendingPathComponent();

  swift_unknownObjectRelease();
  if (!v128)
  {
    goto LABEL_177;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    type metadata accessor for _NSSwiftURL();
    v129 = swift_dynamicCastClass();
    if (v129)
    {
      v130 = v129;
      type metadata accessor for _BridgedNSSwiftURL();
      *(swift_allocObject() + 16) = v130;
      v131 = v128;
      v30 = _BridgedNSSwiftURL.convertingFileReference()();
      v32 = v132;

      goto LABEL_164;
    }

    v149 = objc_allocWithZone(v42);
    *&v149[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v128;
    v168.receiver = v149;
    v168.super_class = v42;
    v134 = v128;
    v135 = objc_msgSendSuper2(&v168, sel_init);
  }

  else
  {
    v133 = objc_allocWithZone(v42);
    *&v133[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v128;
    v169.receiver = v133;
    v169.super_class = v42;
    v134 = v128;
    v135 = objc_msgSendSuper2(&v169, sel_init);
  }

  v150 = v135;
  v30 = _BridgedURL.convertingFileReference()();

  v32 = &protocol witness table for _BridgedURL;
LABEL_164:
  swift_unknownObjectRelease();
LABEL_165:
  *v27 = v30;
  v27[1] = v32;
}

uint64_t one-time initialization function for systemNSLocale()
{
  if (one-time initialization token for system != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for _NSSwiftLocale();
  v5 = static LocaleCache.system;
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____NSSwiftLocale_locale] = v5;
  v2 = String._bridgeToObjectiveCImpl()();
  v6.receiver = v1;
  v6.super_class = v0;
  swift_unknownObjectRetain();
  v3 = objc_msgSendSuper2(&v6, sel_initWithLocaleIdentifier_, v2);
  result = swift_unknownObjectRelease();
  static LocaleCache.systemNSLocale = v3;
  return result;
}

void *one-time initialization function for system()
{
  type metadata accessor for _LocaleICU();
  v0 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
  _s10Foundation17LocalePreferencesVSgWOi0_(v4);
  v2[6] = v4[6];
  v3[0] = v5[0];
  *(v3 + 12) = *(v5 + 12);
  v2[2] = v4[2];
  v2[3] = v4[3];
  v2[4] = v4[4];
  v2[5] = v4[5];
  v2[0] = v4[0];
  v2[1] = v4[1];
  swift_allocObject();
  result = _LocaleICU.init(identifier:prefs:)(0, 0xE000000000000000, v2);
  *&static LocaleCache.system = result;
  *(&static LocaleCache.system + 1) = v0;
  return result;
}

uint64_t URL.init(fileURLWithPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v6 = type metadata accessor for _BridgedURL();
    v7 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v6 = type metadata accessor for _SwiftURL();
    v7 = &protocol witness table for _SwiftURL;
  }

  v8 = v7[8];

  v8(a1, a2, v6, v7);
  v9 = (v7[56])(v6, v7);
  v11 = v10;
  result = swift_unknownObjectRelease();
  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t specialized _SwiftURL.__allocating_init(fileURLWithPath:)(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = specialized BidirectionalCollection.last.getter(a1, a2);
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v2 = 0xE100000000000000;
    v3 = 46;
  }

  v6 = 2 * ((v4 & 0x1FF) != 47);

  v7 = specialized String.withFileSystemRepresentation<A>(_:)(v3, v2, v3, v2);
  v9 = v8;
  swift_bridgeObjectRelease_n();
  v13[0] = v6;
  type metadata accessor for _SwiftURL();
  v12[0] = 0;
  v12[1] = 0;
  v10 = swift_allocObject();
  _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v7, v9, 0, v13, v12);
  return v10;
}

uint64_t _SwiftURL.path.getter()
{
  v1 = _SwiftURL.isFileURL.getter();
  v2 = _SwiftURL.absolutePath(percentEncoded:)(1);
  if ((v1 & 1) == 0)
  {
    if ((*(*(v0 + 16) + 220) & 8) != 0)
    {
      v46 = (v2._object >> 56) & 0xF;
      if ((v2._object & 0x2000000000000000) == 0)
      {
        v46 = v2._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v46)
      {
        v57 = v2;
        MEMORY[0x1EEE9AC00](v2._countAndFlagsBits);
        v54 = &v57;
        v55 = MEMORY[0x1E69E7CD0];
        v56 = 4;
        v48 = v47;
        v40 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v53, v47, v2._object);
        if (v41 == 1)
        {
          v42 = MEMORY[0x1E69E7CD0];
          v43 = v48;
          object = v2._object;
          v45 = 4;
          goto LABEL_32;
        }

LABEL_35:
        v51 = v41;
        v49 = v40;
        goto LABEL_36;
      }
    }

    else
    {
      v36 = (v2._object >> 56) & 0xF;
      if ((v2._object & 0x2000000000000000) == 0)
      {
        v36 = v2._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        v37 = *(v0 + 40);
        v57 = v2;
        MEMORY[0x1EEE9AC00](v2._countAndFlagsBits);
        v54 = &v57;
        v55 = MEMORY[0x1E69E7CD0];
        v56 = v37;
        v39 = v38;
        v40 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v53, v38, v2._object);
        if (v41 == 1)
        {
          v42 = MEMORY[0x1E69E7CD0];
          v43 = v39;
          object = v2._object;
          v45 = v37;
LABEL_32:
          v49 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v43, object, v42, v45);
          v51 = v50;
LABEL_36:

          if (!v51)
          {
            return 0;
          }

          v52 = v49;
LABEL_38:
          v34 = String._droppingTrailingSlashes.getter(v52, v51);

          return v34;
        }

        goto LABEL_35;
      }
    }

    v52 = 0;
    v51 = 0xE000000000000000;
    goto LABEL_38;
  }

  v3 = String._droppingTrailingSlashes.getter(v2._countAndFlagsBits, v2._object);
  v5 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v6 = static _SetStorage.allocate(capacity:)();
  v7 = v6 + 56;
  v8 = *(v6 + 40);
  v9 = byte_1EEECE4C8;
  result = MEMORY[0x1865CD020](v8, byte_1EEECE4C8, 1);
  v11 = -1 << *(v6 + 32);
  v12 = result & ~v11;
  v13 = v12 >> 6;
  v14 = *(v6 + 56 + 8 * (v12 >> 6));
  v15 = 1 << v12;
  v16 = *(v6 + 48);
  if (((1 << v12) & v14) != 0)
  {
    v17 = ~v11;
    while (*(v16 + v12) != v9)
    {
      v12 = (v12 + 1) & v17;
      v13 = v12 >> 6;
      v14 = *(v7 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(v7 + 8 * v13) = v15 | v14;
    *(v16 + v12) = v9;
    v18 = *(v6 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_41;
    }

    *(v6 + 16) = v20;
  }

  v21 = byte_1EEECE4C9;
  result = MEMORY[0x1865CD020](v8, byte_1EEECE4C9, 1);
  v22 = -1 << *(v6 + 32);
  v23 = result & ~v22;
  v24 = v23 >> 6;
  v25 = *(v7 + 8 * (v23 >> 6));
  v26 = 1 << v23;
  v27 = *(v6 + 48);
  if (((1 << v23) & v25) != 0)
  {
    v28 = ~v22;
    while (*(v27 + v23) != v21)
    {
      v23 = (v23 + 1) & v28;
      v24 = v23 >> 6;
      v25 = *(v7 + 8 * (v23 >> 6));
      v26 = 1 << v23;
      if (((1 << v23) & v25) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_14:
    v31 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v31 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v57._countAndFlagsBits = v3;
      v57._object = v5;
      MEMORY[0x1EEE9AC00](result);
      v54 = &v57;
      v55 = v6;
      v56 = 4;

      v32 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v53, v3, v5);
      if (v33 == 1)
      {
        v32 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v3, v5, v6, 4);
      }

      v34 = v32;
      v35 = v33;

      if (v35)
      {
        return v34;
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_12:
  *(v7 + 8 * v24) = v26 | v25;
  *(v27 + v23) = v21;
  v29 = *(v6 + 16);
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    *(v6 + 16) = v30;
    goto LABEL_14;
  }

LABEL_41:
  __break(1u);
  return result;
}

Swift::String __swiftcall _SwiftURL.absolutePath(percentEncoded:)(Swift::Bool percentEncoded)
{
  v2 = *v1;
  v171 = v1[3];
  v172 = v1;
  if (v171)
  {
    v165 = percentEncoded;
    v163 = v172[4];
    v164 = v2;
    v3 = v172[2];

    swift_unknownObjectRetain();
    specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v3, 0, &v188);
    v4 = v189;
    v5 = *(&v190 + 1);
    v7 = *(&v191 + 1);
    v6 = v191;
    v8 = v192;
    v9 = v196;
    v187 = v197;
    v169 = v188;
    v170 = v195;
    v168 = v190;
    v166 = v196;
    v167 = v192;
    if (*(&v188 + 1))
    {
      v10 = v190;
      v161 = *(&v191 + 1);
      v162 = v191;
      v11 = *(&v189 + 1);
      v12 = *(&v188 + 1);
      v13 = String.removingDotSegments.getter(v193, v194);
      v159 = v14;
      v160 = v13;

      v202 = v169;
      v203 = v12;
      v204 = v4;
      v205 = v11;
      v206 = v10;
      v207 = v5;
      v208 = v6;
      v209 = v161;
      *&v210 = v8;
      *(&v210 + 1) = *(&v167 + 1);
      v211 = v160;
      v212 = v159;
      v213 = v170;
      v214 = v9;
      v215 = v197;
      v15 = _SwiftURL.URLStringBuilder.string.getter();
      v163 = v16;
      swift_unknownObjectRelease();
      v173 = v169;
      v174 = v12;
      v175 = v4;
      v176 = v11;
      v177 = v168;
      v178 = v5;
      v179 = v6;
      v180 = v161;
      v181 = v167;
      v182 = v160;
      v183 = v159;
      v184 = v170;
      v185 = v166;
LABEL_17:
      v28 = v197;
LABEL_18:
      v186 = v28;
      outlined destroy of _SwiftURL.URLStringBuilder(&v173);
      v29 = v172[5];
      v30 = swift_allocObject();
      type metadata accessor for _SwiftURL.ResourceInfo();
      v31 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
      v32 = swift_allocObject();
      *(v32 + 24) = 0;
      *(v32 + 16) = 0;
      *(v31 + 16) = v32;
      *(v30 + 56) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
      v33 = swift_allocObject();
      *(v33 + 24) = 0;
      *(v33 + 16) = 0;
      *(v30 + 64) = v33;
      v34 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v15, v163, 1);

      if (v34)
      {
        *(v30 + 16) = v34;
        if ((v34[48] & 1) == 0)
        {

          String.subscript.getter();
        }

        *(v30 + 24) = 0;
        *(v30 + 32) = 0;
        *(v30 + 40) = v29;
        *(v30 + 48) = 0;
      }

      else
      {

        swift_deallocPartialClassInstance();
      }

      v35 = _SwiftURL.relativePath(percentEncoded:)(v165);
      countAndFlagsBits = v35._countAndFlagsBits;
      object = v35._object;

      goto LABEL_45;
    }

    v159 = v194;
    v160 = v193;
    v19 = v191;
    v158 = *(&v189 + 1);
    ObjectType = swift_getObjectType();
    v21 = (*(v163 + 136))(ObjectType, v163);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = v169;
    }

    v24 = v3[72];
    v157 = v22;
    v169 = v23;
    if ((v24 & 1) == 0 || (v3[96] & 1) == 0 || v3[120] != 1 || v3[144] != 1)
    {
      v202 = v23;
      v203 = v22;
      v204 = v4;
      v205 = v158;
      v206 = v168;
      v207 = v5;
      v208 = v19;
      v209 = v7;
      v210 = v167;
      v211 = v160;
      v212 = v159;
      v213 = v170;
      v214 = v166;
      v215 = v197;
      v15 = _SwiftURL.URLStringBuilder.string.getter();
      v163 = v27;
      swift_unknownObjectRelease();
      v173 = v169;
      v174 = v157;
      v175 = v4;
      v176 = v158;
      v177 = v168;
      v178 = v5;
      v179 = v19;
      v180 = v7;
      v181 = v167;
      v182 = v160;
      v183 = v159;
      v184 = v170;
      v185 = v166;
      goto LABEL_17;
    }

    v156 = ObjectType;
    v202 = v171;
    v203 = v163;
    URL._swiftURL.getter();
    v155 = v4;
    if (v25)
    {
      v26 = *(v25 + 16);
    }

    else
    {
      v26 = 0;
    }

    v62 = v19;
    v63 = v167;
    v64 = (*(v163 + 168))(1, v156, v163);
    if (v65)
    {
      v66 = v64;
      v67 = v65;
      v201 = v189;
      outlined destroy of TermOfAddress?(&v201, &_sSSSgMd);
      v158 = v67;
      v155 = v66;
    }

    v68 = (*(v163 + 184))(1, v156, v163);
    if (v69)
    {
      v70 = v68;
      v71 = v69;
      v200 = v190;
      outlined destroy of TermOfAddress?(&v200, &_sSSSgMd);
      v5 = v71;
      v168 = v70;
    }

    v198 = v191;
    v199 = v192;
    v154 = v5;
    if (v26 && (*(v26 + 120) & 1) == 0)
    {

      v76 = String.subscript.getter();
      v78 = v77;
      v80 = v79;
      v82 = v81;

      v62 = MEMORY[0x1865CAE80](v76, v78, v80, v82);
      v7 = v83;

      outlined destroy of TermOfAddress?(&v198, &_sSSSgMd);
    }

    else
    {
      v72 = (*(v163 + 200))(1, v156, v163);
      if (v73)
      {
        v74 = v72;
        v75 = v73;
        outlined destroy of TermOfAddress?(&v198, &_sSSSgMd);
        v62 = v74;
        v7 = v75;
      }

      if (!v26)
      {
        goto LABEL_59;
      }
    }

    if ((*(v26 + 144) & 1) == 0)
    {

      v88 = String.subscript.getter();
      v90 = v89;
      v92 = v91;
      v94 = v93;

      v63 = MEMORY[0x1865CAE80](v88, v90, v92, v94);
      v85 = v95;

      goto LABEL_62;
    }

LABEL_59:
    v84 = (*(v163 + 208))(v156, v163);
    v85 = *(&v167 + 1);
    if (v86)
    {
      goto LABEL_63;
    }

    v202 = v84;
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v85 = v87;
LABEL_62:
    outlined destroy of TermOfAddress?(&v199, &_sSSSgMd);
LABEL_63:
    v96 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v96 = v160 & 0xFFFFFFFFFFFFLL;
    }

    *&v167 = v63;
    *(&v167 + 1) = v85;
    v153 = v26;
    v161 = v7;
    v162 = v62;
    if (!v96)
    {
      v102 = v63;
      v103 = v196;
      v104 = (*(v163 + 248))(1, v156, v163);
      v106 = v105;

      if (v103)
      {
        v107 = v166;
        v108 = v170;
      }

      else
      {
        v119 = (*(v163 + 264))(1, v156, v163);
        if (v120)
        {
          v108 = v119;
        }

        else
        {
          v108 = v170;
        }

        v107 = v166;
        if (v120)
        {
          v107 = v120;
        }
      }

      v121 = *(&v167 + 1);
      v122 = v168;
      v123 = v158;
      v124 = v102;
      v126 = v161;
      v125 = v162;
      v127 = v106;
      goto LABEL_90;
    }

    if ((specialized Collection.first.getter(v160, v159) & 0x1FF) == 0x2F)
    {
      v97 = v62;
      v98 = v63;

      v99 = v159;
      v100 = v158;
      v101 = v160;
    }

    else
    {
      v109 = (*(v163 + 152))(v156, v163);
      v110 = *(v163 + 248);
      if ((v109 & 1) == 0)
      {
        goto LABEL_74;
      }

      v111 = v110(1, v156, v163);
      v113 = v112;

      v114 = HIBYTE(v113) & 0xF;
      if ((v113 & 0x2000000000000000) == 0)
      {
        v114 = v111 & 0xFFFFFFFFFFFFLL;
      }

      if (!v114)
      {
        v202 = 47;
        v203 = 0xE100000000000000;
        MEMORY[0x1865CB0E0](v160, v159);
        v101 = v202;
        v99 = v203;
        v100 = v158;
        v98 = v167;
      }

      else
      {
LABEL_74:
        v115 = v110(1, v156, v163);
        v117 = v116;
        v118 = specialized Collection.first.getter(v160, v159);
        if ((v118 & 0x1FF) == 0x2F)
        {

          v99 = v159;
          v100 = v158;
        }

        else
        {
          LOBYTE(v202) = 47;
          MEMORY[0x1EEE9AC00](v118);
          v152 = &v202;
          specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v150, v115, v117);
          v100 = v158;
          if ((v128 & 1) == 0)
          {
            String.index(after:)();
            v130 = String.subscript.getter();
            v132 = v131;
            v134 = v133;
            v136 = v135;
            v173 = 0;
            v174 = 0xE000000000000000;
            v137 = v159;
            v138 = String.count.getter();
            v163 = v134;
            v139 = Substring.distance(from:to:)();
            v140 = __OFADD__(v138, v139);
            v60 = v138 + v139;
            v97 = v162;
            if (v140)
            {
              __break(1u);
              goto LABEL_92;
            }

            MEMORY[0x1865CAED0](v60);
            v202 = v130;
            v203 = v132;
            v204 = v163;
            v205 = v136;
            lazy protocol witness table accessor for type Substring and conformance Substring();
            String.append<A>(contentsOf:)();
            v202 = v160;
            v203 = v137;

            String.append<A>(contentsOf:)();

            v101 = v173;
            v99 = v174;
            v98 = v167;
            goto LABEL_89;
          }

          v129 = v159;

          v99 = v129;
        }

        v98 = v167;
        v101 = v160;
      }

      v97 = v162;
    }

LABEL_89:
    v104 = String.removingDotSegments.getter(v101, v99);
    v127 = v141;

    v107 = v166;
    v108 = v170;
    v126 = v161;
    v121 = *(&v167 + 1);
    v122 = v168;
    v124 = v98;
    v123 = v100;
    v125 = v97;
LABEL_90:
    v160 = v104;
    v170 = v108;
    v166 = v107;
    v142 = v169;
    v143 = v157;
    v202 = v169;
    v203 = v157;
    v145 = v154;
    v144 = v155;
    v204 = v155;
    v205 = v123;
    v206 = v122;
    v207 = v154;
    v208 = v125;
    v209 = v126;
    *&v210 = v124;
    *(&v210 + 1) = v121;
    v211 = v104;
    v212 = v127;
    v213 = v108;
    v214 = v107;
    v215 = v187;
    v146 = v126;
    v15 = _SwiftURL.URLStringBuilder.string.getter();
    v163 = v147;
    swift_unknownObjectRelease();

    v173 = v142;
    v174 = v143;
    v175 = v144;
    v176 = v123;
    v177 = v122;
    v178 = v145;
    v179 = v162;
    v180 = v146;
    v181 = v167;
    v182 = v160;
    v183 = v127;
    v184 = v170;
    v185 = v166;
    v28 = v187;
    goto LABEL_18;
  }

  v17 = v172[2];
  if (percentEncoded)
  {
    if (*(v17 + 168))
    {
      v18 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v18 = String.subscript.getter();
    }

    countAndFlagsBits = MEMORY[0x1865CAE80](v18);
    object = v42;

    goto LABEL_45;
  }

  if ((*(v17 + 220) & 8) != 0)
  {
    if (*(v17 + 168))
    {
      v43 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v43 = String.subscript.getter();
    }

    v51 = v43;
    v52 = v44;
    v53 = v45;
    v54 = v46;
    if (!((v43 ^ v44) >> 14))
    {
      goto LABEL_33;
    }

    v202 = v43;
    v203 = v44;
    v204 = v45;
    v205 = v46;
    MEMORY[0x1EEE9AC00](v43);
    v150 = &v202;
    v151 = MEMORY[0x1E69E7CD0];
    v152 = 4;

    countAndFlagsBits = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v149, v51, v52, v53, v54);
    object = v58;

    if (object == 1)
    {

      countAndFlagsBits = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v51, v52, v53, v54, MEMORY[0x1E69E7CD0], 4);
      object = v59;
LABEL_41:
      swift_bridgeObjectRelease_n();
      if (!object)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  else
  {
    if (*(v17 + 168))
    {
      v38 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v38 = String.subscript.getter();
    }

    v47 = v38;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    if (!((v38 ^ v39) >> 14))
    {
LABEL_33:

LABEL_44:
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
      goto LABEL_45;
    }

    v55 = v172[5];
    v202 = v38;
    v203 = v39;
    v204 = v40;
    v205 = v41;
    MEMORY[0x1EEE9AC00](v38);
    v150 = &v202;
    v151 = MEMORY[0x1E69E7CD0];
    v152 = v55;

    countAndFlagsBits = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:), v149, v47, v48, v49, v50);
    object = v56;

    if (object == 1)
    {

      countAndFlagsBits = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v47, v48, v49, v50, MEMORY[0x1E69E7CD0], v55);
      object = v57;
      goto LABEL_41;
    }
  }

  if (!object)
  {
    goto LABEL_44;
  }

LABEL_45:
  v60 = countAndFlagsBits;
  v61 = object;
LABEL_92:
  result._object = v61;
  result._countAndFlagsBits = v60;
  return result;
}

uint64_t URL.init(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v6 = type metadata accessor for _BridgedURL();
    v7 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v6 = type metadata accessor for _SwiftURL();
    v7 = &protocol witness table for _SwiftURL;
  }

  v8 = v7[1];

  result = v8(a1, a2, v6, v7);
  if (result)
  {
    v10 = (v7[56])(v6, v7);
    v12 = v11;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *a3 = v10;
  a3[1] = v12;
  return result;
}

uint64_t specialized _SwiftURL.__allocating_init(string:)(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 0;
  }

  type metadata accessor for _SwiftURL();
  v5 = swift_allocObject();
  type metadata accessor for _SwiftURL.ResourceInfo();
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *(v6 + 16) = v7;
  *(v5 + 56) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  *(v5 + 64) = v8;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(a1, a2, 1, 1);

  if (!v9)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v5 + 16) = v9;
  if ((*(v9 + 48) & 1) == 0)
  {

    String.subscript.getter();
  }

  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 4;
  *(v5 + 48) = 0;
  return v5;
}

CFCharacterSetRef static CharacterSet.controlCharacters.getter@<X0>(CFCharacterSetPredefinedSet a1@<X0>, CFCharacterSetRef *a2@<X8>)
{
  result = CFCharacterSetGetPredefined(a1);
  if (result)
  {
    v4 = result;
    type metadata accessor for __CharacterSetStorage();
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 24) = 0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id one-time initialization function for _bridgedAutoupdatingCurrent()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  type metadata accessor for _TimeZoneAutoupdating();
  inited = swift_initStaticObject();
  v1 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating);
  v2 = type metadata accessor for _NSSwiftTimeZone();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  *v4 = inited;
  v4[1] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = xmmword_18122E880;
  *&v3[OBJC_IVAR____NSSwiftTimeZone_lock] = v5;
  v7.receiver = v3;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, sel_init);
  static TimeZoneCache._bridgedAutoupdatingCurrent = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating()
{
  result = lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating;
  if (!lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating)
  {
    type metadata accessor for _TimeZoneAutoupdating();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _TimeZoneAutoupdating(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating();
  *(a1 + 8) = result;
  return result;
}

uint64_t static CharacterSet.urlUserAllowed.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1();
  type metadata accessor for __CharacterSetStorage();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *a2 = result;
  return result;
}

id StringProtocol.addingPercentEncoding(withAllowedCharacters:)(uint64_t a1)
{
  v1 = *(*a1 + 24);
  v2 = *(*a1 + 16);
  StringProtocol._ephemeralString.getter();
  v3 = String._bridgeToObjectiveCImpl()();

  v4 = [v3 _stringByAddingPercentEncodingWithAllowedCharacters_];
  swift_unknownObjectRelease();
  if ((v1 & 1) == 0)
  {
    if (v4)
    {
      isTaggedPointer = _objc_isTaggedPointer(v4);
      v10 = v4;
      v7 = v10;
      if (isTaggedPointer)
      {
        TaggedPointerTag = _objc_getTaggedPointerTag(v10);
        switch(TaggedPointerTag)
        {
          case 0:
            goto LABEL_22;
          case 0x16:
            goto LABEL_29;
          case 2:
LABEL_13:
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            return v11;
        }
      }

      if (__CFStringIsCF())
      {
LABEL_21:

        return 0;
      }

      goto LABEL_19;
    }

LABEL_14:

    return 0;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = _objc_isTaggedPointer(v4);
  v6 = v4;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  if (!TaggedPointerTag)
  {
LABEL_22:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v18)
    {
      v19 = v17;

LABEL_35:
      return v19;
    }

    [v7 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v19 = v23;
LABEL_34:

    goto LABEL_35;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (__CFStringIsCF())
    {
      goto LABEL_21;
    }

LABEL_19:
    v13 = v7;
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

    v19 = String.init(_cocoaString:)();
    goto LABEL_34;
  }

  result = [v7 UTF8String];
  if (!result)
  {
    __break(1u);
    goto LABEL_37;
  }

  result = String.init(utf8String:)(result);
  if (v20)
  {
LABEL_31:
    v22 = result;

    return v22;
  }

  __break(1u);
LABEL_29:
  result = [v7 UTF8String];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  result = String.init(utf8String:)(result);
  if (v21)
  {
    goto LABEL_31;
  }

LABEL_38:
  __break(1u);
  return result;
}

unint64_t CharacterSet.remove(_:)(UTF32Char a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = __CharacterSetStorage.mutableCopy()();

    *v2 = v5;
  }

  IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(*(v5 + 16), a1);
  __CharacterSetStorage.insert(charactersIn:)(a1 | (a1 << 32), MEMORY[0x1E695D750]);
  if (IsLongCharacterMember)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((IsLongCharacterMember == 0) << 32);
}

void __CharacterSetStorage.insert(charactersIn:)(unint64_t a1, void (*a2)(void))
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = *(v2 + 16);
  if (*(v2 + 24))
  {
    v6 = v4 - v3;
    if (v4 >= v3)
    {
      if (v6 != -1)
      {

        (a2)(v5, v3, (v6 + 1));
        return;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v5;
  MutableCopy = CFCharacterSetCreateMutableCopy(0, v7);
  if (!MutableCopy)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (v4 < v3)
  {
    goto LABEL_14;
  }

  if (v4 - v3 == -1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = MutableCopy;
  v10 = MutableCopy;
  a2();

  v11 = *(v2 + 16);
  *(v2 + 16) = v9;
  *(v2 + 24) = 1;
}

{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = *(v2 + 16);
  if (*(v2 + 24))
  {
    if (v4 >= v3)
    {

      (a2)(v5, v3, v4 - v3);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  MutableCopy = CFCharacterSetCreateMutableCopy(0, v6);
  if (!MutableCopy)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v4 < v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = MutableCopy;
  v9 = MutableCopy;
  a2();

  v10 = *(v2 + 16);
  *(v2 + 16) = v8;
  *(v2 + 24) = 1;
}

double URL.append<A>(components:directoryHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  URL._appending<A>(components:directoryHint:)(a1, a3, a4, &v6);
  swift_unknownObjectRelease();
  result = *&v6;
  *v4 = v6;
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance URLQueryItem()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for _NSSwiftURLQueryItem();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____NSSwiftURLQueryItem_queryItem];
  *v7 = v1;
  *(v7 + 1) = v2;
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  v8 = String._bridgeToObjectiveCImpl()();
  if (v3)
  {
    v9 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v6;
  v12.super_class = v5;

  v10 = objc_msgSendSuper2(&v12, sel_initWithName_value_, v8, v9);
  swift_unknownObjectRelease();

  return v10;
}

uint64_t specialized static URLQueryItem._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  outlined consume of Locale.LanguageCode?(*a2, a2[1]);
  v4 = [a1 name];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v35) = 0;
    if (__CFStringIsCF())
    {
      v10 = 0;

LABEL_22:
      v12 = 0xE000000000000000;
      goto LABEL_23;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_23;
    }

    if ([v13 length])
    {
      v10 = String.init(_cocoaString:)();
      v12 = v19;

      goto LABEL_23;
    }

LABEL_21:
    v10 = 0;
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
      goto LABEL_47;
    }

    v17 = String.init(utf8String:)(result);
    if (v18)
    {
      goto LABEL_15;
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
      v10 = v35;
      v12 = v37;
      goto LABEL_19;
    }

LABEL_15:
    v10 = v17;
    v12 = v18;

LABEL_19:
    goto LABEL_23;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v12 = v11;

LABEL_23:
  v20 = [a1 value];
  if (!v20)
  {
    v26 = 0;
    v28 = 0;
    goto LABEL_45;
  }

  v21 = v20;
  v22 = _objc_isTaggedPointer(v20);
  v23 = v21;
  v24 = v23;
  if (!v22)
  {
    goto LABEL_29;
  }

  v25 = _objc_getTaggedPointerTag(v23);
  if (!v25)
  {
    goto LABEL_38;
  }

  if (v25 != 22)
  {
    if (v25 == 2)
    {
      MEMORY[0x1EEE9AC00](v25);
      v26 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v28 = v27;

LABEL_45:
      *a2 = v10;
      a2[1] = v12;
      a2[2] = v26;
      a2[3] = v28;
      return 1;
    }

LABEL_29:
    if (__CFStringIsCF())
    {

LABEL_34:
      v26 = 0;
      v28 = 0xE000000000000000;
      goto LABEL_45;
    }

    v29 = v24;
    v30 = String.init(_nativeStorage:)();
    if (v31)
    {
      v26 = v30;
      v28 = v31;

      goto LABEL_45;
    }

    if (![v29 length])
    {

      goto LABEL_34;
    }

    v26 = String.init(_cocoaString:)();
    v28 = v34;
LABEL_44:

    goto LABEL_45;
  }

  result = [v24 UTF8String];
  if (result)
  {
    v32 = String.init(utf8String:)(result);
    if (v33)
    {
LABEL_39:
      v26 = v32;
      v28 = v33;

      goto LABEL_44;
    }

    __break(1u);
LABEL_38:
    _CFIndirectTaggedPointerStringGetContents();
    v32 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v33)
    {
      [v24 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v26 = v36;
      v28 = v37;
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t specialized static URLQueryItem._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  result = specialized static URLQueryItem._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2);
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSURLQueryItem);
    v3 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v3);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x79726575514C5255, 0xEC0000006D657449);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v21 = 1;
  v5 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(a1, a2, a3, 0);

  if (v5)
  {
    v7 = *(v5 + 218);
    *&v14 = v5;
    *(&v14 + 1) = 0x101010101010101;
    v15[0] = 1;
    memset(&v15[8], 0, 64);
    v16 = 0;
    v8 = v21;
    v17[0] = v21;
    memset(&v17[8], 0, 48);
    v17[56] = v7;
    v17[57] = 0;
    v18 = v14;
    *v19 = *v15;
    *&v19[48] = *&v15[48];
    *&v19[64] = 0uLL;
    *&v19[16] = *&v15[16];
    *&v19[32] = *&v15[32];
    *&v20[42] = *&v17[42];
    *&v20[16] = *&v17[16];
    *&v20[32] = *&v17[32];
    *v20 = *v17;
    _NSBundleDeallocatingImmortalBundle(&v18, v6);
    outlined init with copy of URLComponents._URLComponents(&v14, &v22);
    v28 = *v20;
    v29 = *&v20[16];
    v30[0] = *&v20[32];
    *(v30 + 10) = *&v20[42];
    v24 = *&v19[16];
    v25 = *&v19[32];
    v26 = *&v19[48];
    v27 = *&v19[64];
    v22 = v18;
    v23 = *v19;
  }

  else
  {
    sub_18094C438(&v22);
    v7 = 0;
    v8 = v21;
  }

  *&v18 = v5;
  *(&v18 + 1) = 0x101010101010101;
  v19[0] = 1;
  memset(&v19[8], 0, 72);
  v20[0] = v8;
  memset(&v20[8], 0, 48);
  v20[56] = v7;
  v20[57] = 0;
  outlined destroy of URLComponents._URLComponents(&v18);
  v9 = v29;
  a4[6] = v28;
  a4[7] = v9;
  a4[8] = v30[0];
  *(a4 + 138) = *(v30 + 10);
  v10 = v25;
  a4[2] = v24;
  a4[3] = v10;
  v11 = v27;
  a4[4] = v26;
  a4[5] = v11;
  result = *&v22;
  v13 = v23;
  *a4 = v22;
  a4[1] = v13;
  return result;
}

Swift::OpaquePointer_optional __swiftcall URLComponents._URLComponents.queryItems(percentEncoded:)(Swift::Bool percentEncoded)
{
  v105 = percentEncoded;
  if (*(v2 + 128))
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
  }

  else
  {
    if (*(v2 + 15) & 1) == 0 || !*v2 || (*(*v2 + 192))
    {
      v9 = 0;
      goto LABEL_115;
    }

    v93 = String.subscript.getter();
    v3 = MEMORY[0x1865CAE80](v93);
    v4 = v94;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v112 = v5;
    v113 = v3;
    v111 = 4 * v5;
    v6 = (v3 >> 59) & 1;
    if ((v4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v6) = 1;
    }

    v7 = 4 << v6;
    v106 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v107 = v4 & 0xFFFFFFFFFFFFFFLL;
    swift_bridgeObjectRetain_n();

    v8 = 0;
    v9 = 0;
    v109 = MEMORY[0x1E69E7CC0];
    v10 = 1;
    v11 = 15;
    v12 = 15;
    v103 = v7;
    while (1)
    {
      v13 = v11 & 0xC;
      v14 = v11;
      if (v13 == v7)
      {
        v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, v113, v4);
      }

      v15 = v14 >> 16;
      v16 = v112;
      if (v14 >> 16 >= v112)
      {
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
        goto LABEL_123;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        v18 = String.UTF8View._foreignSubscript(position:)();
        v16 = v112;
      }

      else if ((v4 & 0x2000000000000000) != 0)
      {
        v114 = v113;
        v115 = v107;
        v18 = *(&v114 + v15);
      }

      else
      {
        v17 = v106;
        if ((v113 & 0x1000000000000000) == 0)
        {
          v17 = _StringObject.sharedUTF8.getter();
          v16 = v112;
        }

        v18 = *(v17 + v15);
      }

      if (v18 != 38)
      {
        if (v10)
        {
          v19 = v11;
        }

        else
        {
          v19 = v9;
        }

        if (v18 == 61)
        {
          v9 = v19;
          v10 = 0;
        }

        if (v13 != v7)
        {
          goto LABEL_27;
        }

        goto LABEL_75;
      }

      if (v10)
      {
        if (v8 < v12 >> 14)
        {
          goto LABEL_118;
        }

        v20 = String.subscript.getter();
        v110 = MEMORY[0x1865CAE80](v20);
        v15 = v21;

        v23 = 0;
        v24 = 0;
        v9 = v109;
        if (v105)
        {
          goto LABEL_33;
        }

        goto LABEL_44;
      }

      if (v9 >> 14 < v12 >> 14)
      {
        goto LABEL_119;
      }

      v25 = String.subscript.getter();
      v110 = MEMORY[0x1865CAE80](v25);
      v15 = v26;

      if ((v9 & 0xC) == v7)
      {
        v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, v113, v4);
        if ((v4 & 0x1000000000000000) == 0)
        {
LABEL_37:
          v27 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_42;
        }
      }

      else if ((v4 & 0x1000000000000000) == 0)
      {
        goto LABEL_37;
      }

      if (v112 <= v9 >> 16)
      {
        goto LABEL_122;
      }

      v27 = String.UTF8View._foreignIndex(after:)();
LABEL_42:
      v9 = v109;
      if (v8 < v27 >> 14)
      {
        goto LABEL_120;
      }

      v28 = String.subscript.getter();
      v23 = MEMORY[0x1865CAE80](v28);
      v24 = v29;

      if (v105)
      {
LABEL_33:
        v108 = v15;
        v15 = v7;
        goto LABEL_64;
      }

LABEL_44:
      v30 = HIBYTE(v15) & 0xF;
      v31 = v110;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v30 = v110 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        v104 = v23;
        v114 = v110;
        v115 = v15;
        MEMORY[0x1EEE9AC00](v22);
        v100 = &v114;
        v101 = MEMORY[0x1E69E7CD0];
        v102 = 4;

        v32 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v99, v31, v15);
        if (v33 == 1)
        {
          v34 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v31, v15, MEMORY[0x1E69E7CD0], 4);
          v36 = v35;
          v37 = swift_bridgeObjectRelease_n();
          v38 = v34;
        }

        else
        {
          v39 = v32;
          v40 = v33;
          v37 = swift_bridgeObjectRelease_n();
          v38 = v39;
          v36 = v40;
        }

        v15 = v103;
        v23 = v104;
        v9 = v109;
        v108 = v36;
        if (v36)
        {
          v110 = v38;
          if (!v24)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v108 = 0xE000000000000000;
          v110 = 0;
          if (!v24)
          {
            goto LABEL_64;
          }
        }
      }

      else
      {

        v108 = 0xE000000000000000;
        v15 = v103;
        v110 = 0;
        if (!v24)
        {
          goto LABEL_64;
        }
      }

      v41 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v41 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v114 = v23;
        v115 = v24;
        MEMORY[0x1EEE9AC00](v37);
        v100 = &v114;
        v42 = MEMORY[0x1E69E7CD0];
        v101 = MEMORY[0x1E69E7CD0];
        v102 = 4;

        v43 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v99, v23, v24);
        if (v44 == 1)
        {
          v23 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v23, v24, v42, 4);
          v46 = v45;
          swift_bridgeObjectRelease_n();
          v24 = v46;
        }

        else
        {
          v47 = v43;
          v48 = v44;
          swift_bridgeObjectRelease_n();
          v24 = v48;
          v23 = v47;
        }

        v9 = v109;
      }

      else
      {

        v23 = 0;
        v24 = 0xE000000000000000;
      }

LABEL_64:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      }

      v50 = *(v9 + 16);
      v49 = *(v9 + 24);
      v16 = v112;
      if (v50 >= v49 >> 1)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v9);
        v16 = v112;
        v9 = v56;
      }

      *(v9 + 16) = v50 + 1;
      v51 = (v9 + 32 * v50);
      v52 = v108;
      v51[4] = v110;
      v51[5] = v52;
      v51[6] = v23;
      v51[7] = v24;
      v53 = v11;
      if (v13 == v15)
      {
        v53 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, v113, v4);
        v16 = v112;
      }

      v7 = v15;
      v109 = v9;
      if ((v4 & 0x1000000000000000) != 0)
      {
        if (v16 <= v53 >> 16)
        {
          goto LABEL_121;
        }

        v54 = String.UTF8View._foreignIndex(after:)();
        v16 = v112;
        v12 = v54;
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v12 = (v53 & 0xFFFFFFFFFFFF0000) + 65540;
      }

      v10 = 1;
      if (v13 != v15)
      {
LABEL_27:
        if ((v4 & 0x1000000000000000) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_9;
      }

LABEL_75:
      v55 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, v113, v4);
      v16 = v112;
      v11 = v55;
      if ((v4 & 0x1000000000000000) != 0)
      {
LABEL_28:
        if (v16 <= v11 >> 16)
        {
          goto LABEL_117;
        }

        v11 = String.UTF8View._foreignIndex(after:)();
        goto LABEL_10;
      }

LABEL_9:
      v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_10:
      v8 = v11 >> 14;
      if (v11 >> 14 == v111)
      {
        v57 = v12 >> 14;
        if (v10)
        {

          if (v111 >= v57)
          {
            v58 = String.subscript.getter();
            v60 = v59;
            v62 = v61;
            v64 = v63;

            v13 = MEMORY[0x1865CAE80](v58, v60, v62, v64);
            v15 = v65;

            v7 = 0;
            v11 = 0;
            goto LABEL_91;
          }

          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v57 > v9 >> 14)
        {
          goto LABEL_125;
        }

        v67 = String.subscript.getter();
        v13 = MEMORY[0x1865CAE80](v67);
        v15 = v68;

        if ((v9 & 0xC) == v7)
        {
LABEL_126:
          v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, v113, v4);
        }

        if ((v4 & 0x1000000000000000) == 0)
        {
          v69 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_89;
        }

        if (v112 > v9 >> 16)
        {
          v69 = String.UTF8View._foreignIndex(after:)();
LABEL_89:
          if (v111 >= v69 >> 14)
          {
            v70 = String.subscript.getter();
            v72 = v71;
            v74 = v73;
            v76 = v75;

            v7 = MEMORY[0x1865CAE80](v70, v72, v74, v76);
            v11 = v77;

LABEL_91:
            v9 = v109;
            v78 = MEMORY[0x1E69E7CD0];
            if (!v105)
            {
              v79 = HIBYTE(v15) & 0xF;
              if ((v15 & 0x2000000000000000) == 0)
              {
                v79 = v13 & 0xFFFFFFFFFFFFLL;
              }

              if (!v79)
              {

                goto LABEL_100;
              }

              v114 = v13;
              v115 = v15;
              MEMORY[0x1EEE9AC00](v66);
              v100 = &v114;
              v101 = v78;
              v102 = 4;

              v80 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v99, v13, v15);
              if (v81 == 1)
              {
                v13 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v13, v15, MEMORY[0x1E69E7CD0], 4);
                v83 = v82;
                v84 = swift_bridgeObjectRelease_n();
                v15 = v83;
              }

              else
              {
                v85 = v80;
                v86 = v81;
                v84 = swift_bridgeObjectRelease_n();
                v13 = v85;
                v15 = v86;
              }

              if (!v15)
              {
LABEL_100:
                v13 = 0;
                v15 = 0xE000000000000000;
              }

              if (v11)
              {
                v87 = HIBYTE(v11) & 0xF;
                if ((v11 & 0x2000000000000000) == 0)
                {
                  v87 = v7 & 0xFFFFFFFFFFFFLL;
                }

                if (v87)
                {
                  v114 = v7;
                  v115 = v11;
                  MEMORY[0x1EEE9AC00](v84);
                  v100 = &v114;
                  v101 = v88;
                  v102 = 4;

                  v89 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v99, v7, v11);
                  if (v90 == 1)
                  {
                    v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v7, v11, MEMORY[0x1E69E7CD0], 4);
                    v92 = v91;
                    swift_bridgeObjectRelease_n();
                  }

                  else
                  {
                    v95 = v89;
                    v92 = v90;
                    swift_bridgeObjectRelease_n();
                    v7 = v95;
                  }

                  v11 = v92;
                }

                else
                {

                  v7 = 0;
                  v11 = 0xE000000000000000;
                }
              }
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_112:
              v97 = *(v9 + 16);
              v96 = *(v9 + 24);
              if (v97 >= v96 >> 1)
              {
                v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v9);
              }

              *(v9 + 16) = v97 + 1;
              v98 = (v9 + 32 * v97);
              v98[4] = v13;
              v98[5] = v15;
              v98[6] = v7;
              v98[7] = v11;
              goto LABEL_115;
            }

LABEL_123:
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
            goto LABEL_112;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_131;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_115:
  v69 = v9;
LABEL_131:
  result.value._rawValue = v69;
  result.is_nil = v1;
  return result;
}