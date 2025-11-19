uint64_t $defer #1 <A>() in LazySubviewPrefetcher.update(info:owner:)(uint64_t result, uint64_t a2, char a3)
{
  if ((*result & 1) == 0)
  {
    v5 = *(a2 + 48);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 48) = v5;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
      *(a2 + 48) = result;
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
      v5 = result;
      *(a2 + 48) = result;
    }

    *(v5 + 16) = v7 + 1;
    *(v5 + v7 + 32) = a3;
  }

  return result;
}

void *LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:owner:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  v11 = *(v9 + 32);
  v12 = byte_1F0045218;
  v11(&v21, v10, v9);
  if (((v21 >> v12) & 1) == 0 || ((v8 >> (v12 ^ 1)) & 1) == 0 && (!v12 ? (v15 = -9) : (v15 = -5), (v15 | v8) != 0xFFFFFFFF) || (v21 = v7, v22 = v6, v23 = v8, result = LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(&v21, a2, v12, a3, a4, &v24), (v14 = v24) == 0))
  {
    v16 = byte_1F0045219;
    result = (v11)(&v21, v10, v9);
    if (((v21 >> v16) & 1) != 0 && (((v8 >> (v16 ^ 1)) & 1) != 0 || (!v16 ? (v17 = -9) : (v17 = -5), (v17 | v8) == 0xFFFFFFFF)))
    {
      v21 = v7;
      v22 = v6;
      v23 = v8;
      result = LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(&v21, a2, v16, a3, a4, &v24);
      v14 = v24;
    }

    else
    {
      v14 = 0;
    }
  }

  *a5 = v14;
  return result;
}

uint64_t closure #2 in LazySubviewPrefetcher.update(info:owner:)(int a1, _BYTE *a2)
{

  return closure #2 in LazySubviewPrefetcher.update(info:owner:)(a1, a2, 1);
}

uint64_t closure #3 in LazySubviewPrefetcher.update(info:owner:)(int a1, _BYTE *a2)
{

  return closure #2 in LazySubviewPrefetcher.update(info:owner:)(a1, a2, 0);
}

uint64_t closure #2 in LazySubviewPrefetcher.update(info:owner:)(int a1, _BYTE *a2, int a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v52 = type metadata accessor for OSSignpostID();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  if (one-time initialization token for prefetchNotifyRender != -1)
  {
    swift_once();
  }

  v10 = static Signpost.prefetchNotifyRender;
  v11 = word_1EAB0EA98;
  v12 = HIBYTE(word_1EAB0EA98);
  v13 = byte_1EAB0EA9A;
  v14 = static os_signpost_type_t.event.getter();
  v56 = v10;
  v57 = v11;
  v58 = v12;
  v59 = v13;
  result = Signpost.isEnabled.getter();
  if (result)
  {
    LODWORD(v55) = v14;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDAB4C0;
    *(inited + 32) = a1;
    v45 = inited + 32;
    v17 = MEMORY[0x1E69E76D0];
    *(inited + 56) = MEMORY[0x1E69E7668];
    *(inited + 64) = v17;
    v18 = MEMORY[0x1E69E7358];
    *(inited + 96) = MEMORY[0x1E69E72F0];
    *(inited + 104) = v18;
    *(inited + 72) = a3;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v12)
      {
LABEL_6:
        swift_setDeallocating();
        type metadata accessor for CVarArg();
        swift_arrayDestroy();
        os_signpost(_:dso:log:name:signpostID:)();
        result = (*(v53 + 8))(v9, v52);
        goto LABEL_35;
      }
    }

    else
    {
      swift_once();
      if (v12)
      {
        goto LABEL_6;
      }
    }

    v44 = a2;
    if (v10 == 20)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    v20 = v19;
    v21 = v9;
    v22 = bswap32(v10) | (4 * WORD1(v10));
    v23 = v55;
    v25 = v53 + 16;
    v24 = *(v53 + 16);
    v43 = v21;
    v46 = v24;
    (v24)(v54);
    LOBYTE(v56) = 1;
    v50 = 16 * v20;
    v53 = v25;
    v51 = (v25 - 8);

    v27 = 0;
    v49 = inited + 32;
    v48 = v10;
    v47 = v20;
    do
    {
      v55 = &v43;
      MEMORY[0x1EEE9AC00](v26);
      v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = v29 + 8;
      v31 = v20;
      v32 = v29 + 8;
      do
      {
        *(v32 - 1) = 0;
        *v32 = 0;
        v32 += 16;
        --v31;
      }

      while (v31);
      v33 = (v49 + 40 * v27);
      while (1)
      {
        v34 = *(inited + 16);
        if (v27 == v34)
        {
          break;
        }

        if (v27 >= v34)
        {
          __break(1u);
        }

        ++v27;
        v35 = v33[3];
        __swift_project_boxed_opaque_existential_1(v33, v35);
        *(v30 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35);
        *v30 = v36 & 1;
        v30 += 16;
        v33 += 5;
        if (!--v20)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v56) = 0;
LABEL_20:
      v37 = v48;
      if (v48 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      v20 = v47;
      if (v29[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v29[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v29[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v37 != 20 && v29[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v38 = *v51;
      v39 = v54;
      v40 = v52;
      (*v51)(v54, v52);
      v41 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
      v26 = v46(v39, v41, v40);
    }

    while ((v56 & 1) != 0);

    v42 = v52;
    v38(v54, v52);
    v38(v43, v42);
    swift_setDeallocating();
    type metadata accessor for CVarArg();
    result = swift_arrayDestroy();
    a2 = v44;
  }

LABEL_35:
  *a2 = 1;
  return result;
}

uint64_t LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v7 = v6;
  v197 = a4;
  v202 = a3;
  v203 = a2;
  v206 = a6;
  v9 = *(a5 + 16);
  v10 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v199 = *(AssociatedTypeWitness - 8);
  v200 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v201 = &v155 - v12;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v198 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v155 - v18;
  v20 = *(a1 + 16);
  (*(v10 + 32))(&v213, v9, v10, v17);
  v204 = *(v7 + 8);
  type metadata accessor for LazyLayoutViewCache();
  Value = AGGraphGetValue();
  v22 = *(*Value + 280);
  v205 = *(*Value + 288);
  v196 = *(v7 + 4);
  v195 = *(v7 + 7);
  result = AGGraphGetValue();
  v24 = floor(*(*result + 296));
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_205;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  if (v24 >= 9.22337204e18)
  {
    goto LABEL_206;
  }

  if (v22 < 0 || v205 < 0)
  {
    goto LABEL_11;
  }

  if ((v203 * v204) >> 64 != (v203 * v204) >> 63)
  {
    goto LABEL_208;
  }

  v25 = v24 * 0.75;
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  if (v203 * v204 > v25)
  {
LABEL_11:
    *v206 = 0;
    return result;
  }

  v178 = v203 * v204;
  if (v202)
  {
    result = Axis.Set.contains(_:)(SwiftUI_Axis_vertical);
    if ((result & 1) == 0 || (v20 & 5) == 0)
    {
      goto LABEL_11;
    }

    v175 = v22;
    v26 = SwiftUI_Edge_bottom;
  }

  else
  {
    result = Axis.Set.contains(_:)(SwiftUI_Axis_horizontal);
    if ((result & 1) == 0 || (v20 & 0xA) == 0)
    {
      goto LABEL_11;
    }

    v175 = v22;
    v26 = SwiftUI_Edge_trailing;
  }

  LODWORD(v177) = Edge.Set.contains(_:)(v26);
  AGGraphGetValue();

  v176 = *AGGraphGetValue();

  type metadata accessor for CGPoint(0);
  v27 = AGGraphGetValue();
  *&v28 = *v27;
  v192 = v28;
  *&v28 = v27[1];
  v191 = v28;
  v29 = AGGraphGetValue();
  *&v30 = *v29;
  v194 = v30;
  *&v30 = v29[1];
  v193 = v30;
  v31 = v7[2];
  v32 = v7[3];
  v33 = *v7;
  v254 = v7[1];
  v255 = v31;
  v256[0] = v32;
  *(v256 + 9) = *(v7 + 57);
  v253 = v33;
  LazySubviewPrefetcher.transform.getter(v252);
  v34 = v252[0];
  v174 = v252[1];
  v35 = *&v252[2];
  v36 = *&v252[3];
  v37 = *&v252[4];
  v38 = *&v252[5];
  AGGraphGetValue();

  v39 = *AGGraphGetValue();

  v40 = AGGraphGetValue();
  v170 = *(v13 + 16);
  v171 = v13 + 16;
  v170(v19, v40, v9);
  (*(v10 + 120))(&v251, v9, v10);
  v41 = v19;
  v42 = v174;
  v172 = *(v13 + 8);
  v173 = v13 + 8;
  v172(v41, v9);
  v169 = v251;
  v257 = 1;
  v43 = v37 - (*&v192 - v35);
  v213 = 0u;
  v44 = v38 - (*&v191 - v36);
  v214 = 0u;
  v215 = 0u;
  memset(v216, 0, sizeof(v216));
  v217 = 0u;
  v218 = 0u;
  LOBYTE(v219) = 1;
  v45 = v34;
  v244 = v34;
  v245 = v42;
  v246 = v192;
  v247 = v191;
  v248 = v43;
  v249 = v44;
  specialized ViewTransform.forEach(inverted:_:)(0, &v244, &v213);
  v46 = *&v214;
  if (LOBYTE(v219))
  {
    v46 = *&v194;
  }

  v190 = v46;
  if (LOBYTE(v219))
  {
    v47 = *&v193;
  }

  else
  {
    v47 = *(&v214 + 1);
  }

  v48 = 0.0;
  if (LOBYTE(v219))
  {
    v49 = 0.0;
  }

  else
  {
    v49 = *&v215;
  }

  if (LOBYTE(v219))
  {
    v50 = 0.0;
  }

  else
  {
    v50 = *(&v215 + 1);
  }

  v185 = v50;
  v186 = v49;
  if (LOBYTE(v219))
  {
    v51 = 0.0;
  }

  else
  {
    v51 = *v216;
  }

  if (LOBYTE(v219))
  {
    v52 = 0.0;
  }

  else
  {
    v52 = *(v216 + 1);
  }

  v183 = v52;
  v184 = v51;
  if (LOBYTE(v219))
  {
    v53 = *&v194;
  }

  else
  {
    v53 = *&v218;
  }

  if (LOBYTE(v219))
  {
    v54 = *&v193;
  }

  else
  {
    v54 = *(&v218 + 1);
  }

  v187 = v54;
  v188 = v53;
  if (LOBYTE(v219))
  {
    v55 = 0.0;
  }

  else
  {
    v55 = *(&v217 + 1);
  }

  if (LOBYTE(v219))
  {
    v56 = 0.0;
  }

  else
  {
    v56 = *&v217;
  }

  if (LOBYTE(v219))
  {
    v57 = *&v194;
  }

  else
  {
    v57 = *&v216[1];
  }

  if (LOBYTE(v219))
  {
    v58 = *&v193;
  }

  else
  {
    v58 = *(&v216[1] + 1);
  }

  if (LOBYTE(v219))
  {
    v59 = 0.0;
  }

  else
  {
    v59 = *&v213;
  }

  if (LOBYTE(v219))
  {
    v60 = 0.0;
  }

  else
  {
    v60 = *(&v213 + 1);
  }

  v61 = v39;
  v181 = v58;
  v182 = v57;
  *(&v180 + 1) = v60;
  if (v39 == 1)
  {
    v62 = v59;
    v63 = v60;
    v64 = *&v194 - CGRectGetMaxX(*(&v57 - 2));
    v56 = v56 + v64 - v59;
    v55 = v55 + v60 - v60;
    *&v180 = v64;
  }

  else
  {
    *&v180 = v59;
  }

  *&v189 = v56;
  *(&v189 + 1) = v55;
  v217 = 0u;
  v218 = 0u;
  memset(v216, 0, sizeof(v216));
  v214 = 0u;
  v215 = 0u;
  v213 = 0u;
  LOBYTE(v219) = 1;
  v244 = v45;
  v245 = v42;
  v246 = v192;
  v247 = v191;
  v248 = v43;
  v249 = v44;
  specialized ViewTransform.forEach(inverted:_:)(0, &v244, &v213);
  v65 = *&v214;
  if (LOBYTE(v219))
  {
    v65 = *&v194;
  }

  v165 = v65;
  if (LOBYTE(v219))
  {
    v66 = *&v193;
  }

  else
  {
    v66 = *(&v214 + 1);
  }

  v164 = v66;
  if (LOBYTE(v219))
  {
    v67 = 0.0;
  }

  else
  {
    v67 = *&v215;
  }

  if (LOBYTE(v219))
  {
    v68 = 0.0;
  }

  else
  {
    v68 = *(&v215 + 1);
  }

  v162 = v68;
  v163 = v67;
  if (LOBYTE(v219))
  {
    v69 = 0.0;
  }

  else
  {
    v69 = *v216;
  }

  if (LOBYTE(v219))
  {
    v70 = 0.0;
  }

  else
  {
    v70 = *(v216 + 1);
  }

  v160 = v70;
  v161 = v69;
  if (LOBYTE(v219))
  {
    v71 = *&v194;
  }

  else
  {
    v71 = *&v218;
  }

  if (LOBYTE(v219))
  {
    v72 = *&v193;
  }

  else
  {
    v72 = *(&v218 + 1);
  }

  v167 = v72;
  v168 = v71;
  if (LOBYTE(v219))
  {
    v73 = 0.0;
  }

  else
  {
    v73 = *(&v217 + 1);
  }

  if (LOBYTE(v219))
  {
    v74 = 0.0;
  }

  else
  {
    v74 = *&v217;
  }

  if (LOBYTE(v219))
  {
    v75 = *&v194;
  }

  else
  {
    v75 = *&v216[1];
  }

  if (LOBYTE(v219))
  {
    v76 = *&v193;
  }

  else
  {
    v76 = *(&v216[1] + 1);
  }

  if (LOBYTE(v219))
  {
    v77 = 0.0;
  }

  else
  {
    v77 = *&v213;
  }

  if ((LOBYTE(v219) & 1) == 0)
  {
    v48 = *(&v213 + 1);
  }

  v78 = v175;
  v157 = v76;
  v158 = v75;
  v156 = v48;
  if (v61)
  {
    v79 = v77;
    v80 = v48;
    v81 = *&v194 - CGRectGetMaxX(*(&v75 - 2));
    v159 = v74 + v81 - v77;
    v166 = v73 + v48 - v48;
    v155 = v81;
  }

  else
  {
    v155 = v77;
    v159 = v74;
    v166 = v73;
  }

  v82 = LOBYTE(v177);

  v250 = v176;
  v83 = AGGraphGetValue();
  v85 = *(*v83 + 232);
  v84 = *(*v83 + 240);
  v87 = *(*v83 + 248);
  v86 = *(*v83 + 256);
  v213 = v180;
  v88 = *(&v189 + 1);
  *&v214 = v190;
  v177 = v47;
  *(&v214 + 1) = v47;
  *&v215 = v186;
  *(&v215 + 1) = v185;
  *v216 = v184;
  *(v216 + 1) = v183;
  *&v216[1] = v182;
  *(&v216[1] + 1) = v181;
  v89 = *&v189;
  v217 = v189;
  v90 = v187;
  v91 = v188;
  *&v218 = v188;
  *(&v218 + 1) = v187;
  if (v250 == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v193, v194));
    v88 = *(&v217 + 1);
    v89 = *&v217;
    v90 = *(&v218 + 1);
    v91 = *&v218;
  }

  v258.origin.x = v85;
  v258.origin.y = v84;
  v258.size.width = v87;
  v258.size.height = v86;
  IsNull = CGRectIsNull(v258);
  v93 = 0.0;
  if (v82)
  {
    if (!IsNull)
    {
      if (v202)
      {
        v94 = v86;
      }

      else
      {
        v94 = v87;
      }

      if (v202)
      {
        v95 = v84;
      }

      else
      {
        v95 = v85;
      }

      v96 = v95 + v94;
      if (v96 >= v95)
      {
        v97 = v95;
      }

      else
      {
        v97 = v96;
      }

      if (v95 > v96)
      {
        v96 = v95;
      }

      v93 = 0.0;
      if (v97 <= v96)
      {
        v93 = v96;
      }
    }

    v98 = v93;
    v259.origin.x = v89;
    v259.origin.y = v88;
    v259.size.width = v91;
    v259.size.height = v90;
    result = CGRectIsNull(v259);
    if (result)
    {
      v100 = *(&v189 + 1);
      v99 = v190;
      v101 = v177;
      v102 = v189;
      v103 = 0.0;
    }

    else
    {
      if (v202)
      {
        v112 = v90;
      }

      else
      {
        v112 = v91;
      }

      if (v202)
      {
        v113 = v88;
      }

      else
      {
        v113 = v89;
      }

      v114 = v113 + v112;
      if (v114 >= v113)
      {
        v115 = v113;
      }

      else
      {
        v115 = v114;
      }

      if (v113 > v114)
      {
        v114 = v113;
      }

      v100 = *(&v189 + 1);
      v99 = v190;
      v101 = v177;
      v102 = v189;
      v103 = 0.0;
      if (v115 <= v114)
      {
        v103 = v114;
      }
    }

    v110 = v78;
    if (v103 >= v98)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!IsNull)
    {
      if (v202)
      {
        v104 = v86;
      }

      else
      {
        v104 = v87;
      }

      if (v202)
      {
        v105 = v84;
      }

      else
      {
        v105 = v85;
      }

      v106 = v105 + v104;
      if (v105 + v104 >= v105)
      {
        v107 = v105;
      }

      else
      {
        v107 = v105 + v104;
      }

      if (v105 <= v106)
      {
        v105 = v106;
      }

      v108 = v107 > v105;
      v93 = 0.0;
      if (!v108)
      {
        v93 = v107;
      }
    }

    v109 = v93;
    v260.origin.x = v89;
    v260.origin.y = v88;
    v260.size.width = v91;
    v260.size.height = v90;
    result = CGRectIsNull(v260);
    v110 = v78;
    if (result)
    {
      v100 = *(&v189 + 1);
      v99 = v190;
      v101 = v177;
      v102 = v189;
      v111 = 0.0;
    }

    else
    {
      if (v202)
      {
        v116 = v90;
      }

      else
      {
        v116 = v91;
      }

      if (v202)
      {
        v117 = v88;
      }

      else
      {
        v117 = v89;
      }

      v118 = v117 + v116;
      if (v117 + v116 >= v117)
      {
        v119 = v117;
      }

      else
      {
        v119 = v117 + v116;
      }

      if (v117 <= v118)
      {
        v117 = v118;
      }

      v108 = v119 > v117;
      v100 = *(&v189 + 1);
      v99 = v190;
      v101 = v177;
      v102 = v189;
      v111 = 0.0;
      if (!v108)
      {
        v111 = v119;
      }
    }

    if (v109 >= v111)
    {
      goto LABEL_11;
    }
  }

  v120 = *MEMORY[0x1E698D3F8];
  AGGraphGetValue();

  v202 = v120;
  LazyLayoutViewCache.subviews(context:)(v120, &v244);

  v121 = *(**AGGraphGetValue() + 400);

  v121(v200, v200);

  if (v82)
  {
    v122 = v178 + v205 + 1;
    v123 = v201;
LABEL_174:
    v243 = MEMORY[0x1E69E7CC0];
    v125 = AGGraphGetValue();
    v126 = v198;
    v170(v198, v125, v9);
    *&v213 = __PAIR64__(v197, v202);
    *&v127 = v192;
    *(&v127 + 1) = v191;
    *(&v213 + 1) = __PAIR64__(v195, v196);
    *&v128 = v194;
    *(&v128 + 1) = v193;
    v214 = v127;
    v215 = v128;
    LODWORD(v216[0]) = v169;
    *(v216 + 8) = v180;
    *(&v216[1] + 1) = v99;
    *&v217 = v101;
    *(&v217 + 1) = v186;
    *&v218 = v185;
    *(&v218 + 1) = v184;
    v219 = v183;
    v220 = v182;
    v221 = v181;
    v222 = v102;
    v223 = v100;
    v224 = v188;
    v225 = v187;
    v226 = v155;
    v227 = v156;
    v228 = v165;
    v229 = v164;
    v230 = v163;
    v231 = v162;
    v232 = v161;
    v233 = v160;
    v234 = v158;
    v235 = v157;
    v236 = v159;
    v237 = v166;
    v238 = v168;
    v239 = v167;
    v240 = v194;
    v241 = v193;
    v242 = v250;
    (*(v10 + 80))(v122, &v244, &v213, v123, &v243, v9, v10);
    result = (v172)(v126, v9);
    v129 = v243;
    v130 = *(v243 + 16);
    if (v130)
    {
      if (v204 != v130)
      {
        *(v7 + 8) = v130;
      }

      v131 = 0;
      v132 = (v129 + 64);
      v179 = v7;
      while (1)
      {
        if (v131 >= *(v129 + 16))
        {
          goto LABEL_207;
        }

        v134 = *(v132 - 4);
        if (*(v134 + 224))
        {
          break;
        }

LABEL_181:
        ++v131;
        v132 += 48;
        if (v130 == v131)
        {

          v150 = AGGraphGetValue();
          v151 = *v150;
          v152 = *(*v150 + 156);
          swift_beginAccess();
          v153 = *(v151 + 32);

          LOBYTE(v153) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(v153);
          swift_endAccess();
          LOBYTE(v207[0]) = 10;
          v154 = swift_allocObject();
          *(v154 + 16) = v152;
          *(v154 + 24) = v153 & 1;
          static Update.enqueueAction(reason:_:)(v207, partial apply for closure #1 in LazyLayoutViewCache.signalPrefetch(), v154);

          (*(v199 + 8))(v201, v200);
          result = outlined destroy of _LazyLayout_Subviews(&v244);
          *v206 = 2;
          return result;
        }
      }

      v135 = (v134 + 264);
      v136 = (v134 + 257);
      v137 = 0uLL;
      v138 = 0uLL;
      if ((*(v134 + 296) & 1) == 0)
      {
        v137 = *v135;
        v138 = *(v134 + 280);
        v211[0] = *(v134 + 241);
        *(v211 + 3) = *(v134 + 244);
        v209[0] = *v136;
        *(v209 + 3) = *(v134 + 260);
      }

      v139 = *(v132 - 3);
      v141 = *(v132 - 1);
      v142 = *v132;
      v212 = *(v132 - 16);
      v140 = v212;
      v210 = v142;
      v208 = 0;
      *(v134 + 232) = v139;
      *(v134 + 240) = v140;
      *(v134 + 241) = v211[0];
      *(v134 + 244) = *(v211 + 3);
      *(v134 + 248) = v141;
      *(v134 + 256) = v142;
      *v136 = v209[0];
      *(v134 + 260) = *(v209 + 3);
      *v135 = v137;
      *(v134 + 280) = v138;
      *(v134 + 296) = 0;
      swift_beginAccess();
      v143 = *(v134 + 16);
      result = swift_unownedRetainStrong();
      if (!v143)
      {
        goto LABEL_213;
      }

      v144 = *(v143 + 228);
      swift_retain_n();

      *(v134 + 208) = v144;
      v145 = *(v134 + 16);
      result = swift_unownedRetainStrong();
      if (!v145)
      {
        goto LABEL_214;
      }

      if (((*(*v145 + 360))(result) & 1) == 0)
      {
        goto LABEL_195;
      }

      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v146 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
LABEL_195:

LABEL_196:
          v133 = 0;
          goto LABEL_180;
        }
      }

      else if (static Semantics.forced < v146)
      {
        goto LABEL_195;
      }

      swift_beginAccess();
      v147 = v145[4];
      BloomFilter.init(hashValue:)(&type metadata for UsingGraphicsRenderer);
      v148 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(v147, v207[0]);
      if (v148)
      {
        v149 = *(v148 + 72);

        if (v149)
        {
          goto LABEL_196;
        }
      }

      else
      {
      }

      v133 = 1;
LABEL_180:
      *(v134 + 212) = v133;

      goto LABEL_181;
    }

LABEL_203:
    (*(v199 + 8))(v123, v200);
    result = outlined destroy of _LazyLayout_Subviews(&v244);
    goto LABEL_11;
  }

  v124 = (v203 + 1) * v204;
  if (((v203 + 1) * v204) >> 64 == v124 >> 63)
  {
    v122 = v110 - v124;
    v123 = v201;
    if (v110 - v124 < 0)
    {
      goto LABEL_203;
    }

    goto LABEL_174;
  }

LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
  return result;
}

uint64_t LazyPrefetchState.description.getter()
{
  _StringGuts.grow(_:)(58);
  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD797C0);
  lazy protocol witness table accessor for type LazyPrefetchOperationStack and conformance LazyPrefetchOperationStack();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](0x74657366666F202CLL, 0xEA0000000000203ALL);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](0x74657366666F202CLL, 0xEF203A746E756F43);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LazyPrefetchOperation()
{
  v1 = 0x77656956656B616DLL;
  if (*v0)
  {
    v1 = 0x6863746566657270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x5265726170657270;
  }
}

unint64_t lazy protocol witness table accessor for type LazyPrefetchOperationStack and conformance LazyPrefetchOperationStack()
{
  result = lazy protocol witness table cache variable for type LazyPrefetchOperationStack and conformance LazyPrefetchOperationStack;
  if (!lazy protocol witness table cache variable for type LazyPrefetchOperationStack and conformance LazyPrefetchOperationStack)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyPrefetchOperationStack and conformance LazyPrefetchOperationStack);
  }

  return result;
}

uint64_t assignWithCopy for LazySubviewPrefetcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for LazySubviewPrefetcher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for LazySubviewPrefetcher(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LazySubviewPrefetcher(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for LazyPrefetchState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyPrefetchState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for LazyPrefetchState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyPrefetchOperation and conformance LazyPrefetchOperation()
{
  result = lazy protocol witness table cache variable for type LazyPrefetchOperation and conformance LazyPrefetchOperation;
  if (!lazy protocol witness table cache variable for type LazyPrefetchOperation and conformance LazyPrefetchOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyPrefetchOperation and conformance LazyPrefetchOperation);
  }

  return result;
}

uint64_t ResolvedColorProvider.colorDescription.getter()
{
  v1 = *v0;
  LODWORD(v2) = HIDWORD(*v0);
  if (COERCE_FLOAT(*v0) != 0.0 || v2 != 0.0 || *(&v1 + 2) != 0.0 || *(&v1 + 3) == 0.0 || *(&v1 + 3) != 1.0)
  {
    __asm { FMOV            V2.4S, #1.0 }
  }

  Color.Resolved.description.getter(*&v1, v2, *(&v1 + 2), *(&v1 + 3));
  v10 = v8;
  MEMORY[0x193ABEDD0](94, 0xE100000000000000);
  Float.write<A>(to:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return v10;
}

void ResolvedColorProvider.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  Hasher._combine(_:)(LODWORD(v6));
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  Hasher._combine(_:)(LODWORD(v9));
}

Swift::Int ResolvedColorProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  Hasher._combine(_:)(LODWORD(v6));
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  Hasher._combine(_:)(LODWORD(v9));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvedColorProvider()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v1;
  }

  Hasher._combine(_:)(LODWORD(v6));
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  Hasher._combine(_:)(LODWORD(v9));
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  Hasher._combine(_:)(LODWORD(v10));
  return Hasher._finalize()();
}

Swift::Int Color.RGBColorSpace.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void one-time initialization function for p3ColorSpace()
{
  v0 = *MEMORY[0x1E695F0B8];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    static Color.DisplayP3.p3ColorSpace = v1;
  }

  else
  {
    __break(1u);
  }
}

CGColorRef Color.DisplayP3.staticColor.getter(CGFloat a1, CGFloat a2, CGFloat a3, float a4)
{
  if (one-time initialization token for p3ColorSpace != -1)
  {
    v5 = a3;
    v6 = a4;
    v7 = a2;
    v8 = a1;
    swift_once();
    a1 = v8;
    a2 = v7;
    a4 = v6;
    a3 = v5;
  }

  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  result = CGColorCreate(static Color.DisplayP3.p3ColorSpace, v9);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void Color.DisplayP3.hash(into:)(double a1, double a2, double a3, float a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x193AC11E0](*&v8);
  v9 = 0.0;
  if (a4 != 0.0)
  {
    v9 = a4;
  }

  Hasher._combine(_:)(LODWORD(v9));
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.DisplayP3()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  Color.DisplayP3.hash(into:)(v1, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.DisplayP3()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  Color.DisplayP3.hash(into:)(v1, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t Color.init(hue:saturation:brightness:opacity:)(Swift::Double a1, Swift::Double a2, Swift::Double a3, double a4)
{
  v20 = HSBToRGB(_:_:_:)(a1, a2, a3);
  blue = v20.blue;
  red = v20.red;
  v7 = -red;
  if (red > 0.0)
  {
    v7 = red;
  }

  if (v7 <= 0.04045)
  {
    v8 = v7 * 0.077399;
  }

  else
  {
    v8 = 1.0;
    if (v7 != 1.0)
    {
      green = v20.green;
      v10 = powf((v7 * 0.94787) + 0.052133, 2.4);
      v20.green = green;
      v8 = v10;
    }
  }

  v11 = v20.green;
  v12 = -v11;
  if (v11 > 0.0)
  {
    v12 = v20.green;
  }

  if (v12 <= 0.04045)
  {
    v13 = v12 * 0.077399;
  }

  else
  {
    v13 = 1.0;
    if (v12 != 1.0)
    {
      v13 = powf((v12 * 0.94787) + 0.052133, 2.4);
    }
  }

  v14 = blue;
  if (v14 <= 0.0)
  {
    v15 = -v14;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0.04045)
  {
    v16 = v15 * 0.077399;
  }

  else
  {
    v16 = 1.0;
    if (v15 != 1.0)
    {
      v16 = powf((v15 * 0.94787) + 0.052133, 2.4);
    }
  }

  if (v11 <= 0.0)
  {
    v13 = -v13;
  }

  if (red <= 0.0)
  {
    v8 = -v8;
  }

  if (v14 <= 0.0)
  {
    v17 = -v16;
  }

  else
  {
    v17 = v16;
  }

  type metadata accessor for ColorBox<Color.DisplayP3>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider);
  result = swift_allocObject();
  *(result + 16) = v8;
  *(result + 20) = v13;
  *(result + 24) = v17;
  v18 = a4;
  *(result + 28) = v18;
  *(result + 32) = 2143289344;
  return result;
}

Swift::tuple_red_Double_green_Double_blue_Double __swiftcall HSBToRGB(_:_:_:)(Swift::Double a1, Swift::Double a2, Swift::Double a3)
{
  v3 = a1 * 6.0;
  v4 = COERCE__INT64(fabs(a1 * 6.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v5 = a1 == 1.0;
  v6 = 0.0;
  if (!v5)
  {
    v6 = v3;
    if (v4)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6;
  v8 = v6 - v6;
  v9 = (1.0 - a2) * a3;
  v10 = (1.0 - v8 * a2) * a3;
  v11 = (1.0 - (1.0 - v8) * a2) * a3;
  if (v7 <= 1)
  {
    if (!v7)
    {
      v6 = a3;
      a2 = v11;
      a3 = v9;
      goto LABEL_20;
    }

    if (v7 == 1)
    {
      v6 = (1.0 - v8 * a2) * a3;
      a2 = a3;
      a3 = v9;
      goto LABEL_20;
    }

LABEL_16:
    v6 = a3;
    a2 = (1.0 - a2) * a3;
    a3 = v10;
    goto LABEL_20;
  }

  if (v7 == 2)
  {
    v6 = (1.0 - a2) * a3;
    a2 = a3;
    a3 = v11;
    goto LABEL_20;
  }

  if (v7 == 3)
  {
    v6 = (1.0 - a2) * a3;
    a2 = v10;
    goto LABEL_20;
  }

  if (v7 != 4)
  {
    goto LABEL_16;
  }

  v6 = (1.0 - (1.0 - v8) * a2) * a3;
  a2 = (1.0 - a2) * a3;
LABEL_20:
  result.blue = a3;
  result.green = a2;
  result.red = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type Color.RGBColorSpace and conformance Color.RGBColorSpace()
{
  result = lazy protocol witness table cache variable for type Color.RGBColorSpace and conformance Color.RGBColorSpace;
  if (!lazy protocol witness table cache variable for type Color.RGBColorSpace and conformance Color.RGBColorSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.RGBColorSpace and conformance Color.RGBColorSpace);
  }

  return result;
}

unint64_t AccessibilityAnnouncementPriority.platformRawValue.getter()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

Swift::Int AccessibilityAnnouncementPriority.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t AccessibilitySpeechAttributes.adjustedPitch.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t AccessibilitySpeechAttributes.phoneticRepresentation.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AccessibilitySpeechAttributes.phoneticRepresentation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AccessibilitySpeechAttributes.init(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  *a2 = 514;
  *(a2 + 8) = 0;
  *(a2 + 16) = 769;
  *(a2 + 24) = 0;
  v5 = (a2 + 24);
  *(a2 + 32) = 0;

  if (v3)
  {

    v6 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4);

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV038AccessibilitySpeechSpellsOutCharactersI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4);

    v8 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV032AccessibilitySpeechAdjustedPitchI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4);
    v10 = v9;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV040AccessibilitySpeechAnnouncementsPriorityI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4, v17);

    v12 = v17[0];
  }

  else
  {
    v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v4);
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v4);
    v8 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v4);
    v10 = v13;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>();
    BloomFilter.init(hashValue:)(v14);
    v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV040AccessibilitySpeechAnnouncementsPriorityV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v16);
    if (v15)
    {
      v12 = *(v15 + 72);
    }

    else
    {
      v12 = 3;
    }
  }

  *a2 = v6;
  *(a2 + 1) = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 & 1;
  *(a2 + 17) = v12;
  *v5 = 0;
  *(a2 + 32) = 0;
  return result;
}

void __swiftcall AccessibilitySpeechAttributes.init(alwaysIncludesPunctuation:spellsOutCharacters:adjustedPitch:announcementsPriority:phoneticRepresentation:)(SwiftUI::AccessibilitySpeechAttributes *__return_ptr retstr, Swift::Bool_optional alwaysIncludesPunctuation, Swift::Bool_optional spellsOutCharacters, Swift::Double_optional adjustedPitch, SwiftUI::AccessibilityAnnouncementPriority_optional announcementsPriority, Swift::String_optional phoneticRepresentation)
{
  v7 = *phoneticRepresentation.value._countAndFlagsBits;
  retstr->alwaysIncludesPunctuation = alwaysIncludesPunctuation;
  retstr->spellsOutCharacters = spellsOutCharacters;
  retstr->adjustedPitch.value = *&adjustedPitch.is_nil;
  retstr->adjustedPitch.is_nil = announcementsPriority.value & 1;
  retstr->announcementsPriority.value = v7;
  retstr->phoneticRepresentation.value._countAndFlagsBits = phoneticRepresentation.value._object;
  retstr->phoneticRepresentation.value._object = v6;
}

uint64_t AccessibilitySpeechAttributes.applyTo(environment:)(uint64_t *a1)
{
  v3 = v1[1];
  v4 = *(v1 + 1);
  v5 = v1[16];
  v6 = v1[17];
  v7 = *a1;
  v8 = *v1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1, v8);

  v9 = a1[1];
  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v7, *a1);
  }

  v10 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1, v3);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV038AccessibilitySpeechSpellsOutCharactersK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v10, *a1);
  }

  v11 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1, v4, v5);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV032AccessibilitySpeechAdjustedPitchK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v11, *a1);
  }

  v12 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV040AccessibilitySpeechAnnouncementsPriorityF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2B5(a1, v6);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV040AccessibilitySpeechAnnouncementsPriorityK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v12, *a1);
  }
}

void __swiftcall AccessibilitySpeechAttributes.combined(with:)(SwiftUI::AccessibilitySpeechAttributes *__return_ptr retstr, SwiftUI::AccessibilitySpeechAttributes *with)
{
  value = with->spellsOutCharacters.value;
  v5 = with->adjustedPitch.value;
  v18 = with->alwaysIncludesPunctuation.value;
  is_nil = with->adjustedPitch.is_nil;
  v6 = with->announcementsPriority.value;
  v7 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 1);
  v10 = v2[16];
  v11 = v2[17];
  if (*(v2 + 4))
  {
    countAndFlagsBits = *(v2 + 3);
  }

  else
  {
    countAndFlagsBits = with->phoneticRepresentation.value._countAndFlagsBits;
  }

  if (v11 == 3)
  {
    v14 = v6;
  }

  else
  {
    v14 = v11;
  }

  if (v10)
  {
    v15 = v5;
  }

  else
  {
    v15 = v9;
  }

  if (v8 == 2)
  {
    v16 = value;
  }

  else
  {
    v16 = v8;
  }

  v17 = v18;
  if (v7 != 2)
  {
    v17 = v7;
  }

  retstr->alwaysIncludesPunctuation.value = v17;
  retstr->spellsOutCharacters.value = v16;
  retstr->adjustedPitch.value = v15;
  retstr->adjustedPitch.is_nil = v10 & is_nil;
  retstr->announcementsPriority.value = v14;
  retstr->phoneticRepresentation.value._countAndFlagsBits = countAndFlagsBits;
  retstr->phoneticRepresentation.value._object = v13;
}

uint64_t Text.Style.resolveAccessibilitySpeechAttributes(into:environment:options:)(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = *(v3 + 248);
  if (v7 != 1)
  {
    v8 = *(v3 + 233);
    if (v8 != 3)
    {
      goto LABEL_5;
    }
  }

  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV040AccessibilitySpeechAnnouncementsPriorityI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4, v23);

    LOBYTE(v8) = v23[0];
LABEL_5:
    v9 = *(v3 + 216);
    if (v7 != 1 && *(v3 + 216) != 2)
    {
      goto LABEL_18;
    }

    if (v5)
    {

      v11 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4);

      if (v7 == 1)
      {
        goto LABEL_22;
      }

LABEL_21:
      v14 = v9 >> 8;
      if (v14 != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

LABEL_20:
    v11 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v4);
    if (v7 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>();
  BloomFilter.init(hashValue:)(v12);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV040AccessibilitySpeechAnnouncementsPriorityV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v24);
  if (v13)
  {
    LOBYTE(v8) = *(v13 + 72);
  }

  else
  {
    LOBYTE(v8) = 3;
  }

  v9 = *(v3 + 216);
  if (v7 == 1 || *(v3 + 216) == 2)
  {
    goto LABEL_20;
  }

LABEL_18:
  v11 = v9;
  if (v7 != 1)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v5)
  {

    LOBYTE(v14) = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV038AccessibilitySpeechSpellsOutCharactersI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4);

    if (v7 == 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    LOBYTE(v14) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v4);
    if (v7 == 1)
    {
      goto LABEL_27;
    }
  }

LABEL_26:
  if ((*(v3 + 232) & 1) == 0)
  {
    v17 = 0;
    v15 = *(v3 + 224);
    goto LABEL_31;
  }

LABEL_27:
  if (v5)
  {

    v15 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV032AccessibilitySpeechAdjustedPitchI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4);
    v17 = v16;
  }

  else
  {
    v15 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v4);
    v17 = v18;
  }

LABEL_31:
  v24 = v4;
  v25 = v5;
  if (EnvironmentValues.accessibilityTextAttributeResolver.getter())
  {
    LOBYTE(v24) = v11;
    BYTE1(v24) = v14;
    v25 = v15;
    v26 = v17 & 1;
    v27 = v8;
    v28 = 0;
    v29 = 0;
    v23[0] = v4;
    v23[1] = v5;
    v22 = v6;
    (*(v19 + 24))(a1, &v24, v23, &v22);
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>);
    }
  }
}

BOOL specialized static AccessibilitySpeechAttributes.== infix(_:_:)(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = a2[1];
  v14 = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = *(a2 + 3);
  v17 = *(a2 + 4);
  if (v4 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v11 == 2 || ((v11 ^ v4) & 1) != 0)
    {
      return v18;
    }
  }

  if (v5 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v12 == 2 || ((v12 ^ v5) & 1) != 0)
    {
      return v18;
    }
  }

  if (v7)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v13)
    {
      v19 = v14;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v8 == 3)
  {
    if (v15 != 3)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v15 == 3 || v8 != v15)
    {
      return v18;
    }
  }

  if (v10)
  {
    return v17 && (v9 == v16 && v10 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v17;
}

unint64_t lazy protocol witness table accessor for type AccessibilityAnnouncementPriority and conformance AccessibilityAnnouncementPriority()
{
  result = lazy protocol witness table cache variable for type AccessibilityAnnouncementPriority and conformance AccessibilityAnnouncementPriority;
  if (!lazy protocol witness table cache variable for type AccessibilityAnnouncementPriority and conformance AccessibilityAnnouncementPriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAnnouncementPriority and conformance AccessibilityAnnouncementPriority);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilitySpeechAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t assignWithCopy for AccessibilitySpeechAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for AccessibilitySpeechAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t static HVStack._makeView(root:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v10[4] = *(a2 + 64);
  v11 = *(a2 + 80);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v12 = v6;
  return (*(*(a6 + 8) + 88))(&v12, v10);
}

uint64_t static HVStack.layoutProperties.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 56))();
  *a2 = result & 1;
  *(a2 + 1) = 256;
  return result;
}

__n128 HVStack.makeCache(subviews:)@<Q0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v22 - v10;
  v26 = *a1;
  v24 = *(a1 + 1);
  v23 = *(a1 + 16);
  v25 = *(a1 + 17);
  v12 = *(a3 + 56);

  v13 = v12(a2, a3);
  (*(a3 + 48))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  v16 = (*(a3 + 40))(a2, a3);
  LOBYTE(AssociatedTypeWitness) = v17;
  v18 = (*(a3 + 64))(a2, a3);
  v30 = AssociatedTypeWitness & 1;
  v29 = 0;
  v28 = 0;
  v27 = v23;
  *&v31 = v15;
  *(&v31 + 1) = v16;
  LOBYTE(v32) = AssociatedTypeWitness & 1;
  BYTE1(v32) = v13 & 1;
  WORD3(v32) = v40;
  *(&v32 + 2) = *&v39[7];
  *(&v32 + 1) = 0;
  *&v33 = 0xFFF0000000000000;
  BYTE8(v33) = 0;
  HIDWORD(v33) = *&v39[3];
  *(&v33 + 9) = *v39;
  v34.n128_u64[0] = 0xFFF0000000000000;
  v34.n128_u8[8] = 0;
  v34.n128_u32[3] = *&v38[3];
  *(&v34.n128_u32[2] + 1) = *v38;
  v35 = 0uLL;
  LODWORD(v36) = v26;
  *(&v36 + 1) = v24;
  LOBYTE(v37) = v23;
  BYTE1(v37) = v25;
  BYTE2(v37) = v18 & 1;
  *(&v37 + 1) = MEMORY[0x1E69E7CC0];
  StackLayout.makeChildren()();
  v19 = v36;
  *(a4 + 64) = v35;
  *(a4 + 80) = v19;
  *(a4 + 96) = v37;
  v20 = v32;
  *a4 = v31;
  *(a4 + 16) = v20;
  result = v34;
  *(a4 + 32) = v33;
  *(a4 + 48) = result;
  return result;
}

char *HVStack.updateCache(_:subviews:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v30 - v11;
  v34 = *a2;
  v32 = *(a2 + 1);
  v31 = *(a2 + 16);
  v33 = *(a2 + 17);
  v13 = (*(a4 + 56))(a3, a4, v10);
  (*(a4 + 48))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  v16 = (*(a4 + 40))(a3, a4);
  LOBYTE(a4) = *(a1 + 98);
  LOBYTE(v9) = v17 & 1;
  v38 = v17 & 1;
  v18 = v13 & 1;
  v37 = 0;
  v36 = 0;
  v35 = v31;
  LOBYTE(v12) = v31;
  v19 = *(a1 + 16);
  v42[0] = *a1;
  v42[1] = v19;
  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = *(a1 + 64);
  v23 = *(a1 + 80);
  *&v43[15] = *(a1 + 95);
  v42[4] = v22;
  *v43 = v23;
  v42[2] = v20;
  v42[3] = v21;
  v24 = v32;

  outlined destroy of StackLayout.Header(v42);
  *a1 = v15;
  *(a1 + 8) = v16;
  *(a1 + 16) = v9;
  *(a1 + 17) = v18;
  *(a1 + 18) = *&v40[7];
  *(a1 + 22) = v41;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xFFF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 41) = *v40;
  *(a1 + 44) = *&v40[3];
  *(a1 + 48) = 0xFFF0000000000000;
  *(a1 + 56) = 0;
  v25 = *v39;
  *(a1 + 60) = *&v39[3];
  *(a1 + 57) = v25;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  LOBYTE(v25) = v33;
  *(a1 + 80) = v34;
  *(a1 + 88) = v24;
  *(a1 + 96) = v12;
  *(a1 + 97) = v25;
  *(a1 + 98) = a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + 104);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v27 + 16));
  }

  else
  {
    v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11StackLayoutV5Child33_00690F480F8D293143B214DBE6D72CD0LLV_Tt1g5(0, *(v27 + 24) >> 1);

    *(a1 + 104) = v28;
  }

  return StackLayout.makeChildren()();
}

unint64_t HVStack.spacing(subviews:cache:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  result = StackLayout.UnmanagedImplementation.spacing()(a1, &v7);
  v6 = *(a1 + 97);
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a1 + 104) = v4;
  return result;
}

double HVStack.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, __n128 *a6)
{
  v11 = a6[6].n128_u64[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  }

  v12 = *(v11 + 2);
  v14.n128_u8[0] = a2 & 1;
  closure #1 in StackLayout.sizeThatFits(_:)(a6, (v11 + 32), v12, *&a1, a2 & 1, *&a3, a4 & 1, &v14);
  result = v14.n128_f64[0];
  a6[6].n128_u64[1] = v11;
  return result;
}

uint64_t HVStack.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, double a7, CGFloat a8, uint64_t a9, uint64_t a10)
{
  v19 = *(a10 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
  }

  result = StackLayout.UnmanagedImplementation.commitPlacements(in:proposedSize:)(a1, a2 & 1, a3, a4 & 1, a10, (v19 + 32), *(v19 + 2), a5, a6, a7, a8);
  *(a10 + 104) = v19;
  return result;
}

uint64_t assignWithCopy for _StackLayoutCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  v6 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  LOBYTE(v6) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;

  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

double (*_BlurEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

uint64_t _BlurEffect.descriptionAttributes.getter(char a1)
{
  type metadata accessor for _ContiguousArrayStorage<(name: String, value: String)>();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDAB4C0;
  *(v2 + 32) = 0x737569646172;
  *(v2 + 40) = 0xE600000000000000;
  *(v2 + 48) = Double.description.getter();
  *(v2 + 56) = v3;
  *(v2 + 64) = 0x65757161704F7369;
  *(v2 + 72) = 0xE800000000000000;
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v4, v5);

  *(v2 + 80) = 0;
  *(v2 + 88) = 0xE000000000000000;
  return v2;
}

double _BlurEffect.effectValue(size:)@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, double a3@<D2>)
{
  v6 = swift_allocObject();
  *v11 = a3;
  WORD4(v11[0]) = a1;
  _s7SwiftUI14GraphicsFilterOWOi_(v11);
  v7 = v15;
  v6[5] = v14;
  v6[6] = v7;
  v6[7] = v16[0];
  *(v6 + 124) = *(v16 + 12);
  v8 = v11[1];
  v6[1] = v11[0];
  v6[2] = v8;
  result = *&v12;
  v10 = v13;
  v6[3] = v12;
  v6[4] = v10;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 12) = 10;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _BlurEffect(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _BlurEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = swift_allocObject();
  *&v10[0] = v3;
  WORD4(v10[0]) = v4;
  _s7SwiftUI14GraphicsFilterOWOi_(v10);
  v6 = v14;
  v5[5] = v13;
  v5[6] = v6;
  v5[7] = v15[0];
  *(v5 + 124) = *(v15 + 12);
  v7 = v10[1];
  v5[1] = v10[0];
  v5[2] = v7;
  result = *&v11;
  v9 = v12;
  v5[3] = v11;
  v5[4] = v9;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

uint64_t VisualEffect.blur(radius:opaque:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = a5;
  v10 = a1;
  lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect();
  return VisualEffect.rendererEffect<A>(_:)(&v9, a2, &type metadata for _BlurEffect, a3, a4);
}

unint64_t instantiation function for generic protocol witness table for _BlurEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _BlurEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _BlurEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for RendererVisualEffect<_BlurEffect>()
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<_BlurEffect>)
  {
    lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect();
    v0 = type metadata accessor for RendererVisualEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RendererVisualEffect<_BlurEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RendererVisualEffect<_BlurEffect> and conformance RendererVisualEffect<A>()
{
  result = lazy protocol witness table cache variable for type RendererVisualEffect<_BlurEffect> and conformance RendererVisualEffect<A>;
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_BlurEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<_BlurEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererVisualEffect<_BlurEffect> and conformance RendererVisualEffect<A>);
  }

  return result;
}

SwiftUI::AccessibilityTextContentType::RawValue_optional __swiftcall AccessibilityTextContentType.RawValue.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t View.concentricPadding<A>(_:of:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v13[3] = a4;
  v13[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  v12[0] = v9;
  View.modifier<A>(_:)(v12, a3, &type metadata for ConcentricPaddingLayout);
  return outlined destroy of _AnyAnimatableData(v12);
}

uint64_t View._concentricPadding<A>(corner:in:minimum:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v22 = a4;
  v9 = a1;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ConcentricCornerPaddingModifier();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  LOBYTE(v9) = *v9;
  (*(v10 + 16))(v12, a2, a5, v15);
  *v17 = v9;
  (*(v10 + 32))(&v17[*(v13 + 36)], v12, a5);
  v18 = &v17[*(v13 + 40)];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  v18[32] = *(a3 + 32);
  View.modifier<A>(_:)(v17, v22, v13);
  return (*(v14 + 8))(v17, v13);
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA27CornerConfigurationShape_v1Rd__r__lAA15ModifiedContentVyxAA010ConcentricD15PaddingModifier33_7079FF89BCF97F81EB250A589B9A5CEDLLVyqd__GGAaBHPxAaBHD1__AiA0cL0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t *initializeBufferWithCopyOfBuffer for ConcentricEdgePaddingModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 1) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 33 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 1) & ~v5;
    v11 = (a2 + v5 + 1) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = (v6 + v10) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v6 + v11) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 32);
    v15 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v15;
    *(v12 + 32) = v14;
  }

  return v3;
}

_BYTE *initializeWithCopy for ConcentricEdgePaddingModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  return a1;
}

_BYTE *assignWithCopy for ConcentricEdgePaddingModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  return a1;
}

_BYTE *initializeWithTake for ConcentricEdgePaddingModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  return a1;
}

_BYTE *assignWithTake for ConcentricEdgePaddingModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  return a1;
}

uint64_t getEnumTagSinglePayload for ConcentricEdgePaddingModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 1) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 > 0xFB)
  {
    return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
  }

  v17 = *a1;
  v18 = v17 >= 4;
  v19 = v17 - 4;
  if (!v18)
  {
    v19 = -1;
  }

  if (v19 + 1 >= 2)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ConcentricEdgePaddingModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFB)
  {
    v8 = 251;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 1) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 > 0xFB)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 1] & ~v9;

        v17(v18);
      }

      else
      {
        *a1 = a2 + 4;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t initializeWithCopy for ConcentricPaddingLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  (**(v3 - 8))(a1 + 8, a2 + 8);
  return a1;
}

uint64_t assignWithCopy for ConcentricPaddingLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t assignWithTake for ConcentricPaddingLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConcentricPaddingLayout(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConcentricPaddingLayout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static ConcentricCornerPaddingModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v66 = *a2;
  v8 = *(a2 + 2);
  v50 = *(a2 + 3);
  v9 = *(a2 + 9);
  v51 = *(a2 + 8);
  v64 = *(a2 + 40);
  v10 = *(a2 + 15);
  v65 = *(a2 + 14);
  v11 = *(a2 + 16);
  v12 = *(a2 + 18);
  v13 = *(a2 + 76);
  if ((v9 & 0x22) == 0)
  {
    return a3();
  }

  v41 = *(a2 + 17);
  v43 = v13;
  v40 = a5;
  v44 = a6;
  v45 = a3;
  v46 = a4;
  v47 = a7;
  swift_beginAccess();
  v14 = *(v8 + 16);
  v15 = *MEMORY[0x1E698D3F8];
  *&v52 = __PAIR64__(v12, v11);
  v42 = v12;
  *(&v52 + 1) = __PAIR64__(v14, v10);
  v53 = v15;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ConcentricProxy and conformance ConcentricProxy();
  v38 = Attribute.init<A>(body:value:flags:update:)();
  if (one-time initialization token for containerShape != -1)
  {
    swift_once();
  }

  v16 = static CachedEnvironment.ID.containerShape;
  swift_beginAccess();
  v17 = specialized CachedEnvironment.attribute<A>(id:_:)(v16);
  swift_endAccess();
  if (one-time initialization token for defaultPadding != -1)
  {
    swift_once();
  }

  v39 = v10;
  v18 = static CachedEnvironment.ID.defaultPadding;
  swift_beginAccess();
  v19 = specialized CachedEnvironment.attribute<A>(id:_:)(v18);
  swift_endAccess();
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v20 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
  v22 = swift_endAccess();
  v23 = v7;
  *&v52 = __PAIR64__(v17, v7);
  *(&v52 + 1) = __PAIR64__(v21, v19);
  v53 = __PAIR64__(v15, v38);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v40;
  v25 = v44;
  v36 = type metadata accessor for ConcentricCornerPaddingModifier.CornerPadding();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EdgeInsets>(0, &lazy cache variable for type metadata for Attribute<EdgeInsets>, &type metadata for EdgeInsets, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v52, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v35, v36, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  v28 = v49[0];
  type metadata accessor for ConcentricCornerPaddingModifier();
  v48 = v23;
  v52 = v66;
  v53 = v8;
  v54 = v50;
  v55 = v51;
  v56 = v9;
  v57 = v64;
  v58 = v65;
  v59 = v39;
  v60 = v11;
  v61 = v41;
  v62 = v42;
  v63 = v43;
  v29 = static ViewModifier.makeConcentricLayout(padding:modifier:inputs:body:)(v49, v28, &v48, &v52, v45);
  v30 = v49[0];
  v31 = v49[1];
  MEMORY[0x1EEE9AC00](v29);
  v35[0] = v24;
  v35[1] = v25;
  LODWORD(v36) = v32;
  BYTE4(v36) = BYTE4(v32) & 1;
  MEMORY[0x1EEE9AC00](v32);
  result = AGGraphMutateAttribute();
  v34 = v47;
  *v47 = v30;
  v34[1] = v31;
  return result;
}

uint64_t ConcentricCornerPaddingModifier.CornerPadding.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  v117 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v116 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ConcentricCornerPaddingModifier();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  *&v103 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - v22;
  v104 = a2;
  ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(v10, a5, type metadata accessor for ConcentricCornerPaddingModifier, &v88 - v22);
  v24 = *v23;
  v26 = *(v16 + 8);
  *&v25 = v16 + 8;
  v102 = *&v26;
  result = v26(v23, v15);
  if (v24 >= 4)
  {
    v55 = 0.0;
    if (v24 == 4)
    {
      return result;
    }

    __break(1u);
  }

  else
  {
    Value = AGGraphGetValue();
    v100 = *Value;
    v99 = Value[1];
    v98 = Value[2];
    *&v115 = Value[3];
    v42 = *(Value + 2);
    v141 = *(Value + 1);
    v142 = v42;
    v143 = Value[12];
    v95 = v25;
    ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(v10, a5, type metadata accessor for ConcentricCornerPaddingModifier, v20);
    (*(v117 + 32))(v116, &v20[*(v15 + 36)], v10);
    v43 = AGGraphGetValue();
    v44 = *(v43 + 8);
    v113 = *v43;
    *&v114 = v44;
    v112 = *(v43 + 16);
    v111 = *(v43 + 20);
    v109 = *(v43 + 24);
    v45 = *(v43 + 32);
    v107 = *(v43 + 36);
    v108 = v45;
    v46 = *(v43 + 40);
    v105 = *(v43 + 44);
    v106 = v46;
    LODWORD(v44) = *(v43 + 52);
    v97 = *(v43 + 48);
    v110 = v44;
    v47 = a5;
    LODWORD(a5) = v24;
    LODWORD(v96) = *(v43 + 56);
    v48 = *&v103;
    v93 = a1;
    v94 = a3;
    v101 = v10;
    v92 = v47;
    ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(v10, v47, type metadata accessor for ConcentricCornerPaddingModifier, *&v103);
    v49 = v48 + *(v15 + 40);
    v50 = *v49;
    v51 = *(v49 + 32);
    (*&v102)(v48, v15);
    if (v51)
    {
      v50 = *AGGraphGetValue();
    }

    v5 = 0.0;
    if (!Edge.Set.contains(_:)(SwiftUI_Edge_top))
    {
      v50 = 0.0;
    }

    Edge.Set.contains(_:)(SwiftUI_Edge_leading);
    Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
    Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
    *&v137 = __PAIR64__(v99, v100);
    *(&v137 + 1) = __PAIR64__(v115, v98);
    v138 = v141;
    v139 = v142;
    v140 = v143;
    v126 = *&v113;
    v127 = *&v114;
    *&v128 = COERCE_DOUBLE(__PAIR64__(v111, v112));
    v129 = v109;
    v130 = v108;
    v131 = v107;
    v132 = v106;
    v133 = v105;
    v52 = v97;
    v134 = v97;
    v135 = v110;
    v136 = LOBYTE(v96);
    GeometryProxy.containerBoundsChildFrame(containerShape:)(&v126, v144);
    if (v145)
    {
      return (*(v117 + 8))(v116, v101);
    }

    v95 = *&v144[2];
    v96 = *&v144[1];
    v6 = *&v144[5];
    v102 = *v144;
    v103 = *&v144[4];
    v90 = *&v144[6];
    v91 = *&v144[3];
    v88 = v50;
    v89 = *&v144[7];
    v10 = v101;
    v53 = v92;
    ConcentricCornerPaddingModifier.CornerPadding.layoutComputer.getter(v94, &v126);
    v54 = *&v126;
    if (v126 == 0.0)
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v54 = static LayoutComputer.defaultValue;
    }

    *&v137 = v109;
    *(&v137 + 1) = __PAIR64__(v107, v108);
    *&v138 = __PAIR64__(v105, v106);
    *(&v138 + 1) = __PAIR64__(v110, v52);
    (*(v114 + 24))(&v126, 0, 0, 1, v112 | (v111 << 32), &v137);
    v55 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if ((v130 & 1) == 0)
    {
      v55 = v126;
      v7 = v127;
      v8 = *&v128;
      v5 = v129;
    }

    specialized static Update.begin()();
    Attribute = AGWeakAttributeGetAttribute();
    v57 = 0uLL;
    v58 = 0uLL;
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v57 = *InputValue;
      v58 = InputValue[1];
    }

    v114 = v58;
    v115 = v57;
    static Update.end()();
    v138 = v114;
    v137 = v115;
    ViewSize.proposal.getter(&v122);
    v60 = v122;
    v61 = v123;
    v62 = v124;
    v63 = v125;
    if (one-time initialization token for lockAssertionsAreEnabled != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }
    }

    v118 = v60;
    v119 = v61;
    v120 = v62;
    v121 = v63;
    (*(*v54 + 120))(&v118);
    v23 = v116;
    CornerConfigurationShape_v1.resolvedRadii(size:)(v10, v53);
    v64 = v29;
    v65 = v55;
    if (a5)
    {
      v64 = v30;
      v65 = v7;
      if (a5 != 1)
      {
        v64 = v32;
        v65 = v5;
        if (a5 != 2)
        {
          v64 = v31;
          v65 = v8;
        }
      }
    }

    v40 = v96;
    v36 = v96 + v91;
    v33 = v6 + v89;
    v39 = v102;
    *&v38 = v103;
    v35 = v102 + v95;
    v34 = v103 + v90;
    v37 = v65 - v64;
    if (v37 <= 0.0)
    {
      goto LABEL_59;
    }

    v28 = byte_1F0045240;
    if (a5 <= 1)
    {
      if (a5)
      {
        if (byte_1F0045240)
        {
          v66 = v96;
        }

        else
        {
          v66 = v102 + v95;
        }

        v67 = v103 + v90;
      }

      else
      {
        if (byte_1F0045240)
        {
          v66 = v96;
        }

        else
        {
          v66 = v102;
        }

        v67 = v103;
      }

      v68 = v6;
      goto LABEL_50;
    }
  }

  if (a5 == 3)
  {
    if (v28)
    {
      v66 = v36;
    }

    else
    {
      v66 = v35;
    }

    v67 = v34;
  }

  else
  {
    if (v28)
    {
      v66 = v36;
    }

    else
    {
      v66 = v39;
    }

    v67 = *&v38;
  }

  v68 = v33;
LABEL_50:
  if (v28)
  {
    v67 = v68;
  }

  v69 = v37 - vabdd_f64(v66, v67);
  if (v69 < 0.0)
  {
    goto LABEL_59;
  }

  if (a5 > 1)
  {
    v70 = v5;
    if (a5 != 2)
    {
      v70 = v8;
    }
  }

  else
  {
    v70 = v55;
    if (a5)
    {
      v70 = v7;
    }
  }

  if (v69 >= v70)
  {
LABEL_59:
    if (byte_1F0045241)
    {
      v71 = v36;
    }

    else
    {
      v71 = v39;
    }

    if (byte_1F0045241)
    {
      v72 = v36;
    }

    else
    {
      v72 = v35;
    }

    if (byte_1F0045241)
    {
      v73 = v40;
    }

    else
    {
      v73 = v35;
    }

    if (byte_1F0045241)
    {
      v74 = v40;
    }

    else
    {
      v74 = v39;
    }

    v75 = v29;
    v76 = v55;
    if (a5)
    {
      v75 = v30;
      v76 = v7;
      if (a5 != 1)
      {
        v75 = v32;
        v76 = v5;
        if (a5 != 2)
        {
          v75 = v31;
          v76 = v8;
        }
      }
    }

    v77 = v76 - v75;
    if (v77 > 0.0)
    {
      if (a5 > 1)
      {
        v73 = v71;
        v78 = v38;
        v79 = v33;
        if (a5 != 2)
        {
          v73 = v72;
          *&v78 = v34;
          v79 = v33;
        }
      }

      else
      {
        *&v78 = v34;
        v79 = v6;
        if (!a5)
        {
          v73 = v74;
          v78 = v38;
          v79 = v6;
        }
      }

      v80 = byte_1F0045241 ? v79 : *&v78;
      v81 = v77 - vabdd_f64(v73, v80);
      if (v81 >= 0.0)
      {
        if (a5 > 1)
        {
          v82 = v5;
          if (a5 != 2)
          {
            v82 = v8;
          }
        }

        else
        {
          v82 = v55;
          if (a5)
          {
            v82 = v7;
          }
        }

        if (v81 < v82)
        {
LABEL_125:

          return (*(v117 + 8))(v23, v10);
        }
      }
    }

    goto LABEL_126;
  }

  v83 = v55;
  if (a5)
  {
    v29 = v32;
    v83 = v5;
    if (a5 != 2)
    {
      v29 = v30;
      v83 = v7;
      if (a5 != 1)
      {
        v29 = v31;
        v83 = v8;
      }
    }
  }

  v84 = v83 - v29;
  if (v84 > 0.0)
  {
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        v85 = byte_1F0045241 ? v36 : v39;
      }

      else
      {
        v85 = byte_1F0045241 ? v36 : v35;
        *&v38 = v34;
      }

      v6 = v33;
    }

    else if (a5)
    {
      v85 = byte_1F0045241 ? v40 : v35;
      *&v38 = v34;
    }

    else
    {
      v85 = byte_1F0045241 ? v40 : v39;
    }

    v86 = byte_1F0045241 ? v6 : *&v38;
    v87 = v84 - vabdd_f64(v85, v86);
    if (v87 >= 0.0)
    {
      if (a5 > 1)
      {
        v55 = v5;
        if (a5 != 2)
        {
          v55 = v8;
        }
      }

      else if (a5)
      {
        v55 = v7;
      }

      if (v87 < v55)
      {
        goto LABEL_125;
      }
    }
  }

LABEL_126:

  return (*(v117 + 8))(v23, v10);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ConcentricCornerPaddingModifier<A>.CornerPadding()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

double protocol witness for static StatefulRule.initialValue.getter in conformance ConcentricProxy@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  return result;
}

double protocol witness for Rule.value.getter in conformance ConcentricPosition@<D0>(double *a1@<X8>)
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = AGGraphGetValue();
  result = v4 + *v5;
  *a1 = v3 + v5[1];
  a1[1] = result;
  return result;
}

double protocol witness for Rule.value.getter in conformance ConcentricSize@<D0>(_OWORD *a1@<X8>)
{
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v3.f64[0] = Value[1];
  v4.f64[0] = Value[3];
  ViewSize.inset(by:)(v7, *Value, v3, Value[2], v4);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

void ConcentricPaddingLayout.placement(of:in:)(uint64_t InputValue, uint64_t a2)
{
  if (*(a2 + 48))
  {
    InputValue = AGGraphGetInputValue();
  }

  MEMORY[0x1EEE9AC00](InputValue);
  MEMORY[0x1EEE9AC00](v2);
  AGGraphWithUpdate();
  __break(1u);
}

int8x16_t closure #1 in ConcentricPaddingLayout.placement(of:in:)@<Q0>(__int128 *a1@<X0>, int8x16_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = a1[1];
  v21 = *a1;
  v22 = v8;
  v23 = a1[2];
  v24 = *(a1 + 48);
  swift_getAtKeyPath();

  v13 = v18;
  v14 = v19;
  v15 = v20;
  (*(v16 + 24))(v25, *&a3, *&a4, 0, v17, &v13);
  if (v26)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s64(v9);
  result = vbicq_s8(v25[0], v10);
  v12 = vbicq_s8(v25[1], v10);
  *a2 = result;
  a2[1] = v12;
  return result;
}

double key path getter for PlacementContext.subscript<A>(dynamicMember:) : PlacementContextContainerShapeData@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for Attribute<EdgeInsets>(0, &lazy cache variable for type metadata for EnvironmentFetch<ContainerShapeData>, &type metadata for ContainerShapeData, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  type metadata accessor for LayoutEngineBox<ConcentricLayoutComputer.Engine>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, ContainerShapeData>, &type metadata for EnvironmentValues, &type metadata for ContainerShapeData, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<ContainerShapeData> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<ContainerShapeData> and conformance EnvironmentFetch<A>);
  lazy protocol witness table accessor for type EnvironmentFetch<ContainerShapeData> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<ContainerShapeData> and conformance EnvironmentFetch<A>);
  v4 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
  v6 = *v4;
  v7 = v4[1];
  *v8 = v4[2];
  *&v8[9] = *(v4 + 41);

  *a2 = v6;
  a2[1] = v7;
  a2[2] = *v8;
  result = *&v8[9];
  *(a2 + 41) = *&v8[9];
  return result;
}

double protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance ConcentricPaddingLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a3 + 2);
  v13 = *a3;
  v14 = v7;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  LayoutProxy.size(in:)(&v9);
  if (!v4)
  {
    return v3;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ConcentricPaddingLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized closure #1 in SizeAndSpacingContext.update<A>(_:)(void *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v4);
  *a1 = v4;
}

uint64_t lazy protocol witness table accessor for type EnvironmentFetch<ContainerShapeData> and conformance EnvironmentFetch<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Attribute<EdgeInsets>(255, &lazy cache variable for type metadata for EnvironmentFetch<ContainerShapeData>, &type metadata for ContainerShapeData, type metadata accessor for EnvironmentFetch);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t assignWithCopy for ConcentricLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  v10 = *(a2 + 160);
  v11 = *(a2 + 176);
  v12 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v11;
  *(a1 + 192) = v12;
  *(a1 + 160) = v10;
  return a1;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t assignWithTake for ConcentricLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  v6 = *(a2 + 160);
  v7 = *(a2 + 176);
  v8 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v7;
  *(a1 + 192) = v8;
  *(a1 + 160) = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for ConcentricLayoutComputer.Engine(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 209))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ConcentricLayoutComputer.Engine(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for ConcentricPaddingUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  swift_weakCopyAssign();
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return a1;
}

uint64_t initializeWithTake for ConcentricPaddingUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakTakeInit();
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for ConcentricPaddingUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakTakeAssign();
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for ConcentricProxy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConcentricProxy and conformance ConcentricProxy();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ConcentricCornerPaddingModifier<A>.CornerPadding(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ConcentricPosition(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConcentricPosition and conformance ConcentricPosition();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ConcentricSize(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConcentricSize and conformance ConcentricSize();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ConcentricLayoutComputer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConcentricLayoutComputer and conformance ConcentricLayoutComputer();
  *(a1 + 8) = result;
  return result;
}

uint64_t static GeometryEffect._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

__n128 ProjectionTransform.flipRTL(width:)(double a1)
{
  v16 = 0xBFF0000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v3 = *v1;
  v14[1] = v1[1];
  v4 = v1[3];
  v14[2] = v1[2];
  v20 = xmmword_18DDAA020;
  v21 = a1;
  v14[3] = v4;
  v22 = xmmword_18DDAB500;
  v15 = *(v1 + 8);
  v14[0] = v3;
  ProjectionTransform.concatenating(_:)(v14, v7);
  v10[0] = 0xBFF0000000000000;
  memset(&v10[1], 0, 24);
  v11 = xmmword_18DDAA020;
  v12 = a1;
  v13 = xmmword_18DDAB500;
  ProjectionTransform.concatenating(_:)(v10, v8);
  v5 = v8[3];
  v1[2] = v8[2];
  v1[3] = v5;
  *(v1 + 8) = v9;
  result = v8[1];
  *v1 = v8[0];
  v1[1] = result;
  return result;
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA17_Rotation3DEffectV_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v73[1] = *(a2 + 16);
  v73[2] = v5;
  v73[0] = *a2;
  v6 = WORD2(v5);
  if ((BYTE4(v5) & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v69 = *(a2 + 32);
    v70 = v7;
    v71 = *(a2 + 64);
    v72 = *(a2 + 80);
    v8 = *(a2 + 16);
    v67 = *a2;
    v68 = v8;
    return a3(a1, &v67);
  }

  LODWORD(v67) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_Rotation3DEffectV_Tt1B5(&v67, v73);
  v10 = v67;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11);
  v12 = *(a2 + 16);
  v65 = *a2;
  v66 = v12;
  v49 = *(a2 + 32);
  v63 = *(a2 + 36);
  v64 = *(a2 + 52);
  v53 = *(a2 + 76);
  v13 = *(a2 + 48);
  v69 = *(a2 + 32);
  v70 = v13;
  v71 = *(a2 + 64);
  v72 = *(a2 + 80);
  v14 = *(a2 + 16);
  v67 = *a2;
  v68 = v14;
  outlined init with copy of _ViewInputs(a2, v60);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v67);
  v16 = *(a2 + 48);
  v69 = *(a2 + 32);
  v70 = v16;
  v71 = *(a2 + 64);
  v72 = *(a2 + 80);
  v17 = *(a2 + 16);
  v67 = *a2;
  v68 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v67);
  swift_endAccess();
  v19 = *(a2 + 60);
  v46 = v11;
  v47 = v10;
  *&v67 = __PAIR64__(v15, v10);
  *(&v67 + 1) = __PAIR64__(v19, v18);
  LODWORD(v68) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<_Rotation3DEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24);
  swift_endAccess();
  *&v67 = __PAIR64__(v23, v22);
  DWORD2(v67) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v49 | 0x1C;
  v60[0] = v65;
  v60[1] = v66;
  *&v61[4] = v63;
  *&v61[20] = v64;
  *v61 = v49 | 0x1C;
  *&v61[28] = v20;
  *v62 = v21;
  *&v62[4] = v21;
  *&v62[8] = v26;
  *&v62[12] = v53;
  *v58 = *v61;
  *&v58[16] = *&v61[16];
  *v59 = *v62;
  *&v59[16] = HIDWORD(v53);
  v56 = v65;
  v57 = v66;
  v28 = outlined init with copy of _ViewInputs(v60, &v67);
  (a3)(v54, v28, &v56);
  v69 = *v58;
  v70 = *&v58[16];
  v71 = *v59;
  v72 = *&v59[16];
  v67 = v56;
  v68 = v57;
  outlined destroy of _ViewInputs(&v67);
  v29 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v30 = v53;
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v52 = v20;
  v31 = ++lastIdentity;
  v50 = *&v73[0];
  if ((v6 & 0x100) == 0)
  {
    v32 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v33 = *(a2 + 48);
    *v58 = *(a2 + 32);
    *&v58[16] = v33;
    *v59 = *(a2 + 64);
    *&v59[16] = *(a2 + 80);
    v34 = *(a2 + 16);
    v56 = *a2;
    v57 = v34;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v56);
    v36 = *(a2 + 48);
    *v58 = *(a2 + 32);
    *&v58[16] = v36;
    *v59 = *(a2 + 64);
    *&v59[16] = *(a2 + 80);
    v37 = *(a2 + 16);
    v56 = *a2;
    v57 = v37;
    v38 = CachedEnvironment.animatedCGSize(for:)(&v56);
    swift_endAccess();
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v54[0]);
    if ((v39 & 0x100000000) != 0)
    {
      v40 = v32;
    }

    else
    {
      v40 = v39;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v50, v56);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a2 + 68);
    *&v56 = __PAIR64__(v47, v31);
    *(&v56 + 1) = __PAIR64__(v38, v35);
    *&v57 = __PAIR64__(v43, v46);
    DWORD2(v57) = v40;
    BYTE12(v57) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectDisplayList<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for GeometryEffectDisplayList);
    lazy protocol witness table accessor for type GeometryEffectDisplayList<_Rotation3DEffect> and conformance GeometryEffectDisplayList<A>();
    v44 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v56) = 0;
    PreferencesOutputs.subscript.setter(v44, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v53;
    v20 = v52;
LABEL_17:
    v56 = v65;
    v57 = v66;
    *v58 = v27;
    *&v58[4] = v63;
    *&v58[20] = v64;
    *&v58[28] = v20;
    *v59 = v21;
    *&v59[4] = v21;
    *&v59[8] = v26;
    *&v59[12] = v30;
    result = outlined destroy of _ViewInputs(&v56);
    *a4 = v54[0];
    a4[1] = v54[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v73[0], &v56);
  result = AGWeakAttributeGetAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v55[0] = v31;
    v45 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v55);
    v45(&v56, 0);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_n@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n46VtFZAjA01_K0V_APtcfU0_ACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D15AVLLVGA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGGTf1nnnc_n@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_nTm@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  v65[1] = *(a2 + 16);
  v65[2] = v6;
  v65[0] = *a2;
  v7 = WORD2(v6);
  if ((BYTE4(v6) & 0x20) != 0)
  {
    v52 = a3;
    LODWORD(v66) = a1;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16ScalePulseEffect33_5B41BB980C958F118A8AF82B3D90BAC0LLV_Tt1B5(&v66, v65);
    v9 = v66;
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v10 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    LODWORD(v10) = specialized CachedEnvironment.attribute<A>(id:_:)(v10);
    v11 = *(a2 + 16);
    v62 = *a2;
    v63 = v11;
    v50 = *(a2 + 32);
    v60 = *(a2 + 36);
    v61 = *(a2 + 52);
    v54 = *(a2 + 76);
    v12 = *(a2 + 48);
    *v68 = *(a2 + 32);
    *&v68[16] = v12;
    *v69 = *(a2 + 64);
    *&v69[16] = *(a2 + 80);
    v13 = *(a2 + 16);
    v66 = *a2;
    v67 = v13;
    outlined init with copy of _ViewInputs(a2, &v56);
    v14 = CachedEnvironment.animatedCGSize(for:)(&v66);
    v15 = *(a2 + 48);
    *v68 = *(a2 + 32);
    *&v68[16] = v15;
    *v69 = *(a2 + 64);
    *&v69[16] = *(a2 + 80);
    v16 = *(a2 + 16);
    v66 = *a2;
    v67 = v16;
    v17 = CachedEnvironment.animatedPosition(for:)(&v66);
    swift_endAccess();
    v18 = *(a2 + 60);
    v47 = v10;
    v48 = v9;
    *&v66 = __PAIR64__(v14, v9);
    *(&v66 + 1) = __PAIR64__(v18, v17);
    LODWORD(v67) = v10;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for GeometryEffectTransform);
    lazy protocol witness table accessor for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>();
    v19 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v20 = *(swift_dynamicCastClassUnconditional() + 248);

    v21 = *(a2 + 64);
    v22 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v23 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v24 = specialized CachedEnvironment.attribute<A>(id:_:)(v23);
    swift_endAccess();
    *&v66 = __PAIR64__(v22, v21);
    DWORD2(v66) = v24;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v25 = Attribute.init<A>(body:value:flags:update:)();
    v66 = v62;
    v67 = v63;
    *&v68[4] = v60;
    *&v68[20] = v61;
    *v68 = v50 | 0x1C;
    *&v68[28] = v19;
    *v69 = v20;
    *&v69[4] = v20;
    *&v69[8] = v25;
    *&v69[12] = v54;
    outlined init with copy of _ViewInputs(&v66, &v56);
    (a4)(v55, &v66, v52);
    outlined destroy of _ViewInputs(&v66);
    v26 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
    v27 = v54;
    v28 = v19;
    if (v26)
    {
      v29 = lastIdentity + 1;
      lastIdentity = v29;
      v30 = *&v65[0];
      v46 = v28;
      v53 = v29;
      if ((v7 & 0x100) != 0)
      {
        v44 = *&v65[0];
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v65[0], &v56);
        result = AGWeakAttributeGetAttribute();
        if (result == *MEMORY[0x1E698D3F8])
        {
          __break(1u);
          return result;
        }

        v31 = *MEMORY[0x1E698D3F8];
        v64[0] = v29;
        v45 = Attribute<A>.subscript.modify();
        _DisplayList_StableIdentityScope.pushIdentity(_:)(v64);
        v45(&v56, 0);
        v30 = v44;
      }

      else
      {
        v31 = *MEMORY[0x1E698D3F8];
      }

      v32 = *(a2 + 48);
      *v58 = *(a2 + 32);
      *&v58[16] = v32;
      *v59 = *(a2 + 64);
      *&v59[16] = *(a2 + 80);
      v33 = *(a2 + 16);
      v56 = *a2;
      v57 = v33;
      swift_beginAccess();
      v34 = CachedEnvironment.animatedPosition(for:)(&v56);
      v35 = *(a2 + 48);
      *v58 = *(a2 + 32);
      *&v58[16] = v35;
      *v59 = *(a2 + 64);
      *&v59[16] = *(a2 + 80);
      v36 = *(a2 + 16);
      v56 = *a2;
      v57 = v36;
      v37 = CachedEnvironment.animatedCGSize(for:)(&v56);
      swift_endAccess();
      v38 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v55[0]);
      if ((v38 & 0x100000000) != 0)
      {
        v39 = v31;
      }

      else
      {
        v39 = v38;
      }

      BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
      v40 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v30, v56);
      if (v40)
      {
        v41 = *(v40 + 72);
      }

      else
      {
        v41 = 0;
      }

      v42 = *(a2 + 68);
      *&v56 = __PAIR64__(v48, v53);
      *(&v56 + 1) = __PAIR64__(v37, v34);
      *&v57 = __PAIR64__(v42, v47);
      DWORD2(v57) = v39;
      BYTE12(v57) = v41;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>();
      lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>);
      v43 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v56) = 0;
      PreferencesOutputs.subscript.setter(v43, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      v27 = v54;
      v28 = v46;
    }

    v56 = v62;
    v57 = v63;
    *v58 = v50 | 0x1C;
    *&v58[4] = v60;
    *&v58[20] = v61;
    *&v58[28] = v28;
    *v59 = v20;
    *&v59[4] = v20;
    *&v59[8] = v25;
    *&v59[12] = v27;
    result = outlined destroy of _ViewInputs(&v56);
    *a5 = v55[0];
    a5[1] = v55[1];
    return result;
  }

  return a4(a2, a3);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n43VtFZAjA01_K0V_APtcfU0_ACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D12AVLLVG_A_TG5AKyAA15ModifiedContentVyA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGGTf1nnnc_n@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n40VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA010pq6F033_5rstuvwxyz15LLVySiGG_AA0nO6D8AVLLVTG5AKyAA15ModifiedContentVyAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGGTf1nnnc_n@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v73[1] = *(a2 + 16);
  v73[2] = v5;
  v73[0] = *a2;
  v6 = WORD2(v5);
  if ((BYTE4(v5) & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v69 = *(a2 + 32);
    v70 = v7;
    v71 = *(a2 + 64);
    v72 = *(a2 + 80);
    v8 = *(a2 + 16);
    v67 = *a2;
    v68 = v8;
    return a3(a1, &v67);
  }

  LODWORD(v67) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16ScalePulseEffect33_5B41BB980C958F118A8AF82B3D90BAC0LLV_Tt1B5(&v67, v73);
  v10 = v67;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11);
  v12 = *(a2 + 16);
  v65 = *a2;
  v66 = v12;
  v49 = *(a2 + 32);
  v63 = *(a2 + 36);
  v64 = *(a2 + 52);
  v53 = *(a2 + 76);
  v13 = *(a2 + 48);
  v69 = *(a2 + 32);
  v70 = v13;
  v71 = *(a2 + 64);
  v72 = *(a2 + 80);
  v14 = *(a2 + 16);
  v67 = *a2;
  v68 = v14;
  outlined init with copy of _ViewInputs(a2, v60);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v67);
  v16 = *(a2 + 48);
  v69 = *(a2 + 32);
  v70 = v16;
  v71 = *(a2 + 64);
  v72 = *(a2 + 80);
  v17 = *(a2 + 16);
  v67 = *a2;
  v68 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v67);
  swift_endAccess();
  v19 = *(a2 + 60);
  v46 = v11;
  v47 = v10;
  *&v67 = __PAIR64__(v15, v10);
  *(&v67 + 1) = __PAIR64__(v19, v18);
  LODWORD(v68) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24);
  swift_endAccess();
  *&v67 = __PAIR64__(v23, v22);
  DWORD2(v67) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v49 | 0x1C;
  v60[0] = v65;
  v60[1] = v66;
  *&v61[4] = v63;
  *&v61[20] = v64;
  *v61 = v49 | 0x1C;
  *&v61[28] = v20;
  *v62 = v21;
  *&v62[4] = v21;
  *&v62[8] = v26;
  *&v62[12] = v53;
  *v58 = *v61;
  *&v58[16] = *&v61[16];
  *v59 = *v62;
  *&v59[16] = HIDWORD(v53);
  v56 = v65;
  v57 = v66;
  v28 = outlined init with copy of _ViewInputs(v60, &v67);
  (a3)(v54, v28, &v56);
  v69 = *v58;
  v70 = *&v58[16];
  v71 = *v59;
  v72 = *&v59[16];
  v67 = v56;
  v68 = v57;
  outlined destroy of _ViewInputs(&v67);
  v29 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v30 = v53;
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v52 = v20;
  v31 = ++lastIdentity;
  v50 = *&v73[0];
  if ((v6 & 0x100) == 0)
  {
    v32 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v33 = *(a2 + 48);
    *v58 = *(a2 + 32);
    *&v58[16] = v33;
    *v59 = *(a2 + 64);
    *&v59[16] = *(a2 + 80);
    v34 = *(a2 + 16);
    v56 = *a2;
    v57 = v34;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v56);
    v36 = *(a2 + 48);
    *v58 = *(a2 + 32);
    *&v58[16] = v36;
    *v59 = *(a2 + 64);
    *&v59[16] = *(a2 + 80);
    v37 = *(a2 + 16);
    v56 = *a2;
    v57 = v37;
    v38 = CachedEnvironment.animatedCGSize(for:)(&v56);
    swift_endAccess();
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v54[0]);
    if ((v39 & 0x100000000) != 0)
    {
      v40 = v32;
    }

    else
    {
      v40 = v39;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v50, v56);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a2 + 68);
    *&v56 = __PAIR64__(v47, v31);
    *(&v56 + 1) = __PAIR64__(v38, v35);
    *&v57 = __PAIR64__(v43, v46);
    DWORD2(v57) = v40;
    BYTE12(v57) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>();
    lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>);
    v44 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v56) = 0;
    PreferencesOutputs.subscript.setter(v44, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v53;
    v20 = v52;
LABEL_17:
    v56 = v65;
    v57 = v66;
    *v58 = v27;
    *&v58[4] = v63;
    *&v58[20] = v64;
    *&v58[28] = v20;
    *v59 = v21;
    *&v59[4] = v21;
    *&v59[8] = v26;
    *&v59[12] = v30;
    result = outlined destroy of _ViewInputs(&v56);
    *a4 = v54[0];
    a4[1] = v54[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v73[0], &v56);
  result = AGWeakAttributeGetAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v55[0] = v31;
    v45 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v55);
    v45(&v56, 0);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j7RzAA0E8r8R_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n40VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA015p21InteractionF0VG_AA0n5q8F033_404stuvW7CLLVTG5AKyAA0Z7ContentVyAA01_jR8_ContentVyAA0p11InteractionR0VGAWGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a2 + 36;
  v4 = *(a2 + 36);
  if ((v4 & 0x20) != 0)
  {
    v43 = *a2;
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v8 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    LODWORD(v8) = specialized CachedEnvironment.attribute<A>(id:_:)(v8);
    v9 = *(a2 + 16);
    v54 = *a2;
    v55 = v9;
    v45 = *(a2 + 32);
    v52 = *v5;
    v53 = *(v5 + 16);
    v46 = *(a2 + 76);
    v10 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v10;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v11 = *(a2 + 16);
    v57 = *a2;
    v58 = v11;
    outlined init with copy of _ViewInputs(a2, &v48);
    v12 = CachedEnvironment.animatedCGSize(for:)(&v57);
    v13 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v13;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v14 = *(a2 + 16);
    v57 = *a2;
    v58 = v14;
    v15 = CachedEnvironment.animatedPosition(for:)(&v57);
    swift_endAccess();
    v16 = *(a2 + 60);
    v41 = v8;
    v42 = a1;
    *&v57 = __PAIR64__(v12, a1);
    *(&v57 + 1) = __PAIR64__(v16, v15);
    LODWORD(v58) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<FlexStateModifier>, lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier, &type metadata for FlexStateModifier, type metadata accessor for GeometryEffectTransform);
    lazy protocol witness table accessor for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v18 = *(swift_dynamicCastClassUnconditional() + 248);

    v19 = *(a2 + 64);
    v20 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v21 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v22 = specialized CachedEnvironment.attribute<A>(id:_:)(v21);
    swift_endAccess();
    *&v57 = __PAIR64__(v20, v19);
    DWORD2(v57) = v22;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v23 = Attribute.init<A>(body:value:flags:update:)();
    v57 = v54;
    v58 = v55;
    *&v59[4] = v52;
    *&v59[20] = v53;
    *v59 = v45 | 0x1C;
    *&v59[28] = v17;
    *v60 = v18;
    *&v60[4] = v18;
    *&v60[8] = v23;
    *&v60[12] = v46;
    outlined init with copy of _ViewInputs(&v57, &v48);
    specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v57, v47);
    outlined destroy of _ViewInputs(&v57);
    v24 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
    v25 = v46;
    if (v24)
    {
      v26 = ++lastIdentity;
      v40 = v17;
      if ((v4 & 0x100) != 0)
      {
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v43, &v48);
        result = AGWeakAttributeGetAttribute();
        v27 = *MEMORY[0x1E698D3F8];
        if (result == *MEMORY[0x1E698D3F8])
        {
          __break(1u);
          return result;
        }

        v56[0] = v26;
        v39 = Attribute<A>.subscript.modify();
        _DisplayList_StableIdentityScope.pushIdentity(_:)(v56);
        v39(&v48, 0);
      }

      else
      {
        v27 = *MEMORY[0x1E698D3F8];
      }

      v28 = *(a2 + 48);
      *v50 = *(a2 + 32);
      *&v50[16] = v28;
      *v51 = *(a2 + 64);
      *&v51[16] = *(a2 + 80);
      v29 = *(a2 + 16);
      v48 = *a2;
      v49 = v29;
      swift_beginAccess();
      v30 = CachedEnvironment.animatedPosition(for:)(&v48);
      v31 = *(a2 + 48);
      *v50 = *(a2 + 32);
      *&v50[16] = v31;
      *v51 = *(a2 + 64);
      *&v51[16] = *(a2 + 80);
      v32 = *(a2 + 16);
      v48 = *a2;
      v49 = v32;
      v33 = CachedEnvironment.animatedCGSize(for:)(&v48);
      swift_endAccess();
      v34 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v47[0]);
      if ((v34 & 0x100000000) == 0)
      {
        v27 = v34;
      }

      BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
      v35 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v43, v48);
      if (v35)
      {
        v36 = *(v35 + 72);
      }

      else
      {
        v36 = 0;
      }

      v37 = *(a2 + 68);
      *&v48 = __PAIR64__(v42, v26);
      *(&v48 + 1) = __PAIR64__(v33, v30);
      *&v49 = __PAIR64__(v37, v41);
      DWORD2(v49) = v27;
      BYTE12(v49) = v36;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>();
      lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>);
      v38 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v48) = 0;
      PreferencesOutputs.subscript.setter(v38, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      v25 = v46;
      v17 = v40;
    }

    v48 = v54;
    v49 = v55;
    *v50 = v45 | 0x1C;
    *&v50[4] = v52;
    *&v50[20] = v53;
    *&v50[28] = v17;
    *v51 = v18;
    *&v51[4] = v18;
    *&v51[8] = v23;
    *&v51[12] = v25;
    result = outlined destroy of _ViewInputs(&v48);
    *a3 = v47[0];
    a3[1] = v47[1];
    return result;
  }

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a2, a3);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a2 + 36;
  v5 = *(a2 + 36);
  if ((v5 & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v66 = *(a2 + 32);
    v67 = v7;
    v68 = *(a2 + 64);
    v69 = *(a2 + 80);
    v8 = *(a2 + 16);
    v64 = *a2;
    v65 = v8;
    return a3(a1, &v64);
  }

  v10 = a1;
  v45 = *a2;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11);
  v12 = *(a2 + 16);
  v62 = *a2;
  v63 = v12;
  v47 = *(a2 + 32);
  v60 = *v6;
  v61 = *(v6 + 16);
  v49 = *(a2 + 76);
  v13 = *(a2 + 48);
  v66 = *(a2 + 32);
  v67 = v13;
  v68 = *(a2 + 64);
  v69 = *(a2 + 80);
  v14 = *(a2 + 16);
  v64 = *a2;
  v65 = v14;
  outlined init with copy of _ViewInputs(a2, v57);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v64);
  v16 = *(a2 + 48);
  v66 = *(a2 + 32);
  v67 = v16;
  v68 = *(a2 + 64);
  v69 = *(a2 + 80);
  v17 = *(a2 + 16);
  v64 = *a2;
  v65 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v64);
  swift_endAccess();
  v19 = *(a2 + 60);
  v43 = v11;
  v44 = v10;
  *&v64 = __PAIR64__(v15, v10);
  *(&v64 + 1) = __PAIR64__(v19, v18);
  LODWORD(v65) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<FlexStateModifier>, lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier, &type metadata for FlexStateModifier, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24);
  swift_endAccess();
  *&v64 = __PAIR64__(v23, v22);
  DWORD2(v64) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v47 | 0x1C;
  v57[0] = v62;
  v57[1] = v63;
  *&v58[4] = v60;
  *&v58[20] = v61;
  *v58 = v47 | 0x1C;
  v48 = v20;
  *&v58[28] = v20;
  *v59 = v21;
  *&v59[4] = v21;
  *&v59[8] = v26;
  *&v59[12] = v49;
  *v55 = *v58;
  *&v55[16] = *&v58[16];
  *v56 = *v59;
  *&v56[16] = HIDWORD(v49);
  v53 = v62;
  v54 = v63;
  v28 = outlined init with copy of _ViewInputs(v57, &v64);
  (a3)(v51, v28, &v53);
  v66 = *v55;
  v67 = *&v55[16];
  v68 = *v56;
  v69 = *&v56[16];
  v64 = v53;
  v65 = v54;
  outlined destroy of _ViewInputs(&v64);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = ++lastIdentity;
  if ((v5 & 0x100) == 0)
  {
    v30 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v31 = *(a2 + 48);
    *v55 = *(a2 + 32);
    *&v55[16] = v31;
    *v56 = *(a2 + 64);
    *&v56[16] = *(a2 + 80);
    v32 = *(a2 + 16);
    v53 = *a2;
    v54 = v32;
    swift_beginAccess();
    v33 = CachedEnvironment.animatedPosition(for:)(&v53);
    v34 = *(a2 + 48);
    *v55 = *(a2 + 32);
    *&v55[16] = v34;
    *v56 = *(a2 + 64);
    *&v56[16] = *(a2 + 80);
    v35 = *(a2 + 16);
    v53 = *a2;
    v54 = v35;
    v36 = CachedEnvironment.animatedCGSize(for:)(&v53);
    swift_endAccess();
    v37 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v51[0]);
    if ((v37 & 0x100000000) == 0)
    {
      v30 = v37;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v38 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v45, v53);
    if (v38)
    {
      v39 = *(v38 + 72);
    }

    else
    {
      v39 = 0;
    }

    v40 = *(a2 + 68);
    *&v53 = __PAIR64__(v44, v29);
    *(&v53 + 1) = __PAIR64__(v36, v33);
    *&v54 = __PAIR64__(v40, v43);
    DWORD2(v54) = v30;
    BYTE12(v54) = v39;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>();
    lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>);
    v41 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v53) = 0;
    PreferencesOutputs.subscript.setter(v41, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_16:
    v53 = v62;
    v54 = v63;
    *v55 = v27;
    *&v55[4] = v60;
    *&v55[20] = v61;
    *&v55[28] = v48;
    *v56 = v21;
    *&v56[4] = v21;
    *&v56[8] = v26;
    *&v56[12] = v49;
    result = outlined destroy of _ViewInputs(&v53);
    *a4 = v51[0];
    a4[1] = v51[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v45, &v53);
  result = AGWeakAttributeGetAttribute();
  v30 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v52[0] = v29;
    v42 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v52);
    v42(&v53, 0);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA020GlassAppearanceScaleD033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n46VtFZAjA01_K0V_APtcfU0_ACyACyAA01_ef1_D0VyAA020p20TransitionStateF033_stuvwxyz18DFLLVGAA14_Opacityd11VGAA11_Blurd9VG_AA0N21qrD8AVLLVTG5AKyAA15ModifiedContentVyA_yA_yAA01_J16Modifier_ContentVyAA0P23TransitionStateModifierAVLLVGAA08_OpacityD0VGAA05_BlurD0VGAWGGTf1nnnc_n@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v61[1] = *(a2 + 16);
  v61[2] = v4;
  v61[0] = *a2;
  v5 = WORD2(v4);
  if ((BYTE4(v4) & 0x20) != 0)
  {
    LODWORD(v62) = a1;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(&v62, v61);
    v7 = v62;
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v8 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    LODWORD(v8) = specialized CachedEnvironment.attribute<A>(id:_:)(v8);
    v9 = *(a2 + 16);
    v58 = *a2;
    v59 = v9;
    v48 = *(a2 + 32);
    v56 = *(a2 + 36);
    v57 = *(a2 + 52);
    v50 = *(a2 + 76);
    v10 = *(a2 + 48);
    *v64 = *(a2 + 32);
    *&v64[16] = v10;
    *v65 = *(a2 + 64);
    *&v65[16] = *(a2 + 80);
    v11 = *(a2 + 16);
    v62 = *a2;
    v63 = v11;
    outlined init with copy of _ViewInputs(a2, &v52);
    v12 = CachedEnvironment.animatedCGSize(for:)(&v62);
    v13 = *(a2 + 48);
    *v64 = *(a2 + 32);
    *&v64[16] = v13;
    *v65 = *(a2 + 64);
    *&v65[16] = *(a2 + 80);
    v14 = *(a2 + 16);
    v62 = *a2;
    v63 = v14;
    v15 = CachedEnvironment.animatedPosition(for:)(&v62);
    swift_endAccess();
    v16 = *(a2 + 60);
    v45 = v8;
    v46 = v7;
    *&v62 = __PAIR64__(v12, v7);
    *(&v62 + 1) = __PAIR64__(v16, v15);
    LODWORD(v63) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for GeometryEffectTransform);
    lazy protocol witness table accessor for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v18 = *(swift_dynamicCastClassUnconditional() + 248);

    v19 = *(a2 + 64);
    v20 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v21 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v22 = specialized CachedEnvironment.attribute<A>(id:_:)(v21);
    swift_endAccess();
    *&v62 = __PAIR64__(v20, v19);
    DWORD2(v62) = v22;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v23 = Attribute.init<A>(body:value:flags:update:)();
    v62 = v58;
    v63 = v59;
    *&v64[4] = v56;
    *&v64[20] = v57;
    *v64 = v48 | 0x1C;
    *&v64[28] = v17;
    *v65 = v18;
    *&v65[4] = v18;
    *&v65[8] = v23;
    *&v65[12] = v50;
    outlined init with copy of _ViewInputs(&v62, &v52);
    specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v62, v51);
    outlined destroy of _ViewInputs(&v62);
    v24 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
    v25 = v50;
    v26 = v17;
    if (v24)
    {
      v27 = lastIdentity + 1;
      lastIdentity = v27;
      v28 = *&v61[0];
      v44 = v26;
      v49 = v27;
      if ((v5 & 0x100) != 0)
      {
        v42 = *&v61[0];
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v61[0], &v52);
        result = AGWeakAttributeGetAttribute();
        if (result == *MEMORY[0x1E698D3F8])
        {
          __break(1u);
          return result;
        }

        v29 = *MEMORY[0x1E698D3F8];
        v60[0] = v27;
        v43 = Attribute<A>.subscript.modify();
        _DisplayList_StableIdentityScope.pushIdentity(_:)(v60);
        v43(&v52, 0);
        v28 = v42;
      }

      else
      {
        v29 = *MEMORY[0x1E698D3F8];
      }

      v30 = *(a2 + 48);
      *v54 = *(a2 + 32);
      *&v54[16] = v30;
      *v55 = *(a2 + 64);
      *&v55[16] = *(a2 + 80);
      v31 = *(a2 + 16);
      v52 = *a2;
      v53 = v31;
      swift_beginAccess();
      v32 = CachedEnvironment.animatedPosition(for:)(&v52);
      v33 = *(a2 + 48);
      *v54 = *(a2 + 32);
      *&v54[16] = v33;
      *v55 = *(a2 + 64);
      *&v55[16] = *(a2 + 80);
      v34 = *(a2 + 16);
      v52 = *a2;
      v53 = v34;
      v35 = CachedEnvironment.animatedCGSize(for:)(&v52);
      swift_endAccess();
      v36 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v51[0]);
      if ((v36 & 0x100000000) != 0)
      {
        v37 = v29;
      }

      else
      {
        v37 = v36;
      }

      BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
      v38 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v28, v52);
      if (v38)
      {
        v39 = *(v38 + 72);
      }

      else
      {
        v39 = 0;
      }

      v40 = *(a2 + 68);
      *&v52 = __PAIR64__(v46, v49);
      *(&v52 + 1) = __PAIR64__(v35, v32);
      *&v53 = __PAIR64__(v40, v45);
      DWORD2(v53) = v37;
      BYTE12(v53) = v39;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>();
      lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>);
      v41 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v52) = 0;
      PreferencesOutputs.subscript.setter(v41, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      v25 = v50;
      v26 = v44;
    }

    v52 = v58;
    v53 = v59;
    *v54 = v48 | 0x1C;
    *&v54[4] = v56;
    *&v54[20] = v57;
    *&v54[28] = v26;
    *v55 = v18;
    *&v55[4] = v18;
    *&v55[8] = v23;
    *&v55[12] = v25;
    result = outlined destroy of _ViewInputs(&v52);
    *a3 = v51[0];
    a3[1] = v51[1];
    return result;
  }

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a2, a3);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA020GlassAppearanceScaleD033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v73[1] = *(a2 + 16);
  v73[2] = v5;
  v73[0] = *a2;
  v6 = WORD2(v5);
  if ((BYTE4(v5) & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v69 = *(a2 + 32);
    v70 = v7;
    v71 = *(a2 + 64);
    v72 = *(a2 + 80);
    v8 = *(a2 + 16);
    v67 = *a2;
    v68 = v8;
    return a3(a1, &v67);
  }

  LODWORD(v67) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(&v67, v73);
  v10 = v67;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11);
  v12 = *(a2 + 16);
  v65 = *a2;
  v66 = v12;
  v49 = *(a2 + 32);
  v63 = *(a2 + 36);
  v64 = *(a2 + 52);
  v53 = *(a2 + 76);
  v13 = *(a2 + 48);
  v69 = *(a2 + 32);
  v70 = v13;
  v71 = *(a2 + 64);
  v72 = *(a2 + 80);
  v14 = *(a2 + 16);
  v67 = *a2;
  v68 = v14;
  outlined init with copy of _ViewInputs(a2, v60);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v67);
  v16 = *(a2 + 48);
  v69 = *(a2 + 32);
  v70 = v16;
  v71 = *(a2 + 64);
  v72 = *(a2 + 80);
  v17 = *(a2 + 16);
  v67 = *a2;
  v68 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v67);
  swift_endAccess();
  v19 = *(a2 + 60);
  v46 = v11;
  v47 = v10;
  *&v67 = __PAIR64__(v15, v10);
  *(&v67 + 1) = __PAIR64__(v19, v18);
  LODWORD(v68) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24);
  swift_endAccess();
  *&v67 = __PAIR64__(v23, v22);
  DWORD2(v67) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v49 | 0x1C;
  v60[0] = v65;
  v60[1] = v66;
  *&v61[4] = v63;
  *&v61[20] = v64;
  *v61 = v49 | 0x1C;
  *&v61[28] = v20;
  *v62 = v21;
  *&v62[4] = v21;
  *&v62[8] = v26;
  *&v62[12] = v53;
  *v58 = *v61;
  *&v58[16] = *&v61[16];
  *v59 = *v62;
  *&v59[16] = HIDWORD(v53);
  v56 = v65;
  v57 = v66;
  v28 = outlined init with copy of _ViewInputs(v60, &v67);
  (a3)(v54, v28, &v56);
  v69 = *v58;
  v70 = *&v58[16];
  v71 = *v59;
  v72 = *&v59[16];
  v67 = v56;
  v68 = v57;
  outlined destroy of _ViewInputs(&v67);
  v29 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v30 = v53;
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v52 = v20;
  v31 = ++lastIdentity;
  v50 = *&v73[0];
  if ((v6 & 0x100) == 0)
  {
    v32 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v33 = *(a2 + 48);
    *v58 = *(a2 + 32);
    *&v58[16] = v33;
    *v59 = *(a2 + 64);
    *&v59[16] = *(a2 + 80);
    v34 = *(a2 + 16);
    v56 = *a2;
    v57 = v34;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v56);
    v36 = *(a2 + 48);
    *v58 = *(a2 + 32);
    *&v58[16] = v36;
    *v59 = *(a2 + 64);
    *&v59[16] = *(a2 + 80);
    v37 = *(a2 + 16);
    v56 = *a2;
    v57 = v37;
    v38 = CachedEnvironment.animatedCGSize(for:)(&v56);
    swift_endAccess();
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v54[0]);
    if ((v39 & 0x100000000) != 0)
    {
      v40 = v32;
    }

    else
    {
      v40 = v39;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v50, v56);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a2 + 68);
    *&v56 = __PAIR64__(v47, v31);
    *(&v56 + 1) = __PAIR64__(v38, v35);
    *&v57 = __PAIR64__(v43, v46);
    DWORD2(v57) = v40;
    BYTE12(v57) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>();
    lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>);
    v44 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v56) = 0;
    PreferencesOutputs.subscript.setter(v44, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v53;
    v20 = v52;
LABEL_17:
    v56 = v65;
    v57 = v66;
    *v58 = v27;
    *&v58[4] = v63;
    *&v58[20] = v64;
    *&v58[28] = v20;
    *v59 = v21;
    *&v59[4] = v21;
    *&v59[8] = v26;
    *&v59[12] = v30;
    result = outlined destroy of _ViewInputs(&v56);
    *a4 = v54[0];
    a4[1] = v54[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v73[0], &v56);
  result = AGWeakAttributeGetAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v55[0] = v31;
    v45 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v55);
    v45(&v56, 0);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010_TransformD0VG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n90VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_pD4VTG5AKyAA0sT0VyAA01_jz1_T0VyAA04KickZ033_02B8A9C041E17C70E13F37D6E2D14302LLVGAVGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a2 + 36;
  v4 = *(a2 + 36);
  if ((v4 & 0x20) != 0)
  {
    v43 = *a2;
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v8 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    LODWORD(v8) = specialized CachedEnvironment.attribute<A>(id:_:)(v8);
    v9 = *(a2 + 16);
    v54 = *a2;
    v55 = v9;
    v45 = *(a2 + 32);
    v52 = *v5;
    v53 = *(v5 + 16);
    v46 = *(a2 + 76);
    v10 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v10;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v11 = *(a2 + 16);
    v57 = *a2;
    v58 = v11;
    outlined init with copy of _ViewInputs(a2, &v48);
    v12 = CachedEnvironment.animatedCGSize(for:)(&v57);
    v13 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v13;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v14 = *(a2 + 16);
    v57 = *a2;
    v58 = v14;
    v15 = CachedEnvironment.animatedPosition(for:)(&v57);
    swift_endAccess();
    v16 = *(a2 + 60);
    v41 = v8;
    v42 = a1;
    *&v57 = __PAIR64__(v12, a1);
    *(&v57 + 1) = __PAIR64__(v16, v15);
    LODWORD(v58) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<_TransformEffect>, lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect, &type metadata for _TransformEffect, type metadata accessor for GeometryEffectTransform);
    lazy protocol witness table accessor for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v18 = *(swift_dynamicCastClassUnconditional() + 248);

    v19 = *(a2 + 64);
    v20 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v21 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v22 = specialized CachedEnvironment.attribute<A>(id:_:)(v21);
    swift_endAccess();
    *&v57 = __PAIR64__(v20, v19);
    DWORD2(v57) = v22;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v23 = Attribute.init<A>(body:value:flags:update:)();
    v57 = v54;
    v58 = v55;
    *&v59[4] = v52;
    *&v59[20] = v53;
    *v59 = v45 | 0x1C;
    *&v59[28] = v17;
    *v60 = v18;
    *&v60[4] = v18;
    *&v60[8] = v23;
    *&v60[12] = v46;
    outlined init with copy of _ViewInputs(&v57, &v48);
    specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v57, v47);
    outlined destroy of _ViewInputs(&v57);
    v24 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
    v25 = v46;
    if (v24)
    {
      v26 = ++lastIdentity;
      v40 = v17;
      if ((v4 & 0x100) != 0)
      {
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v43, &v48);
        result = AGWeakAttributeGetAttribute();
        v27 = *MEMORY[0x1E698D3F8];
        if (result == *MEMORY[0x1E698D3F8])
        {
          __break(1u);
          return result;
        }

        v56[0] = v26;
        v39 = Attribute<A>.subscript.modify();
        _DisplayList_StableIdentityScope.pushIdentity(_:)(v56);
        v39(&v48, 0);
      }

      else
      {
        v27 = *MEMORY[0x1E698D3F8];
      }

      v28 = *(a2 + 48);
      *v50 = *(a2 + 32);
      *&v50[16] = v28;
      *v51 = *(a2 + 64);
      *&v51[16] = *(a2 + 80);
      v29 = *(a2 + 16);
      v48 = *a2;
      v49 = v29;
      swift_beginAccess();
      v30 = CachedEnvironment.animatedPosition(for:)(&v48);
      v31 = *(a2 + 48);
      *v50 = *(a2 + 32);
      *&v50[16] = v31;
      *v51 = *(a2 + 64);
      *&v51[16] = *(a2 + 80);
      v32 = *(a2 + 16);
      v48 = *a2;
      v49 = v32;
      v33 = CachedEnvironment.animatedCGSize(for:)(&v48);
      swift_endAccess();
      v34 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v47[0]);
      if ((v34 & 0x100000000) == 0)
      {
        v27 = v34;
      }

      BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
      v35 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v43, v48);
      if (v35)
      {
        v36 = *(v35 + 72);
      }

      else
      {
        v36 = 0;
      }

      v37 = *(a2 + 68);
      *&v48 = __PAIR64__(v42, v26);
      *(&v48 + 1) = __PAIR64__(v33, v30);
      *&v49 = __PAIR64__(v37, v41);
      DWORD2(v49) = v27;
      BYTE12(v49) = v36;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>();
      lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>);
      v38 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v48) = 0;
      PreferencesOutputs.subscript.setter(v38, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      v25 = v46;
      v17 = v40;
    }

    v48 = v54;
    v49 = v55;
    *v50 = v45 | 0x1C;
    *&v50[4] = v52;
    *&v50[20] = v53;
    *&v50[28] = v17;
    *v51 = v18;
    *&v51[4] = v18;
    *&v51[8] = v23;
    *&v51[12] = v25;
    result = outlined destroy of _ViewInputs(&v48);
    *a3 = v47[0];
    a3[1] = v47[1];
    return result;
  }

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a2, a3);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010_TransformD0VG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a2 + 36;
  v5 = *(a2 + 36);
  if ((v5 & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v66 = *(a2 + 32);
    v67 = v7;
    v68 = *(a2 + 64);
    v69 = *(a2 + 80);
    v8 = *(a2 + 16);
    v64 = *a2;
    v65 = v8;
    return a3(a1, &v64);
  }

  v10 = a1;
  v45 = *a2;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11);
  v12 = *(a2 + 16);
  v62 = *a2;
  v63 = v12;
  v47 = *(a2 + 32);
  v60 = *v6;
  v61 = *(v6 + 16);
  v49 = *(a2 + 76);
  v13 = *(a2 + 48);
  v66 = *(a2 + 32);
  v67 = v13;
  v68 = *(a2 + 64);
  v69 = *(a2 + 80);
  v14 = *(a2 + 16);
  v64 = *a2;
  v65 = v14;
  outlined init with copy of _ViewInputs(a2, v57);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v64);
  v16 = *(a2 + 48);
  v66 = *(a2 + 32);
  v67 = v16;
  v68 = *(a2 + 64);
  v69 = *(a2 + 80);
  v17 = *(a2 + 16);
  v64 = *a2;
  v65 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v64);
  swift_endAccess();
  v19 = *(a2 + 60);
  v43 = v11;
  v44 = v10;
  *&v64 = __PAIR64__(v15, v10);
  *(&v64 + 1) = __PAIR64__(v19, v18);
  LODWORD(v65) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<_TransformEffect>, lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect, &type metadata for _TransformEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24);
  swift_endAccess();
  *&v64 = __PAIR64__(v23, v22);
  DWORD2(v64) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v47 | 0x1C;
  v57[0] = v62;
  v57[1] = v63;
  *&v58[4] = v60;
  *&v58[20] = v61;
  *v58 = v47 | 0x1C;
  v48 = v20;
  *&v58[28] = v20;
  *v59 = v21;
  *&v59[4] = v21;
  *&v59[8] = v26;
  *&v59[12] = v49;
  *v55 = *v58;
  *&v55[16] = *&v58[16];
  *v56 = *v59;
  *&v56[16] = HIDWORD(v49);
  v53 = v62;
  v54 = v63;
  v28 = outlined init with copy of _ViewInputs(v57, &v64);
  (a3)(v51, v28, &v53);
  v66 = *v55;
  v67 = *&v55[16];
  v68 = *v56;
  v69 = *&v56[16];
  v64 = v53;
  v65 = v54;
  outlined destroy of _ViewInputs(&v64);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = ++lastIdentity;
  if ((v5 & 0x100) == 0)
  {
    v30 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v31 = *(a2 + 48);
    *v55 = *(a2 + 32);
    *&v55[16] = v31;
    *v56 = *(a2 + 64);
    *&v56[16] = *(a2 + 80);
    v32 = *(a2 + 16);
    v53 = *a2;
    v54 = v32;
    swift_beginAccess();
    v33 = CachedEnvironment.animatedPosition(for:)(&v53);
    v34 = *(a2 + 48);
    *v55 = *(a2 + 32);
    *&v55[16] = v34;
    *v56 = *(a2 + 64);
    *&v56[16] = *(a2 + 80);
    v35 = *(a2 + 16);
    v53 = *a2;
    v54 = v35;
    v36 = CachedEnvironment.animatedCGSize(for:)(&v53);
    swift_endAccess();
    v37 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v51[0]);
    if ((v37 & 0x100000000) == 0)
    {
      v30 = v37;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v38 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v45, v53);
    if (v38)
    {
      v39 = *(v38 + 72);
    }

    else
    {
      v39 = 0;
    }

    v40 = *(a2 + 68);
    *&v53 = __PAIR64__(v44, v29);
    *(&v53 + 1) = __PAIR64__(v36, v33);
    *&v54 = __PAIR64__(v40, v43);
    DWORD2(v54) = v30;
    BYTE12(v54) = v39;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>();
    lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>);
    v41 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v53) = 0;
    PreferencesOutputs.subscript.setter(v41, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_16:
    v53 = v62;
    v54 = v63;
    *v55 = v27;
    *&v55[4] = v60;
    *&v55[20] = v61;
    *&v55[28] = v48;
    *v56 = v21;
    *&v56[4] = v21;
    *&v56[8] = v26;
    *&v56[12] = v49;
    result = outlined destroy of _ViewInputs(&v53);
    *a4 = v51[0];
    a4[1] = v51[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v45, &v53);
  result = AGWeakAttributeGetAttribute();
  v30 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v52[0] = v29;
    v42 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v52);
    v42(&v53, 0);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t RoundedSize.init(position:size:pixelLength:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double RoundedSize.value.getter@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = Value[1];
  v3 = AGGraphGetValue();
  ViewFrame.roundCoordinatesToNearestOrUp(toMultipleOf:)(*v3);
  result = *&v5;
  *a1 = v5;
  a1[1] = v6;
  return result;
}

float64x2_t CGAffineTransform.flipRTL(width:)(double a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 8);
  *(v1 + 32) = a1 - *(v1 + 32) - *v1 * a1;
  *(v1 + 40) = v2 + a1 * v3.f64[0];
  result = vnegq_f64(v3);
  *(v1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for RoundedSize(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _Rotation3DEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA17_Rotation3DEffectV_Tt3B5(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _Rotation3DEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _TransformEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010_TransformD0VG_Tt3B5(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _TransformEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance FlexStateModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVG_Tt3B5(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FlexStateModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ScalePulseEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B5(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ScalePulseEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _IgnoredByLayoutEffect<A>@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  swift_getWitnessTable();

  return static GeometryEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _IgnoredByLayoutEffect<A>(int *a1, __int128 *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static GeometryEffect._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance GlassAppearanceScaleEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA020GlassAppearanceScaleD033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt3B5(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassAppearanceScaleEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

unint64_t lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect()
{
  result = lazy protocol witness table cache variable for type _TransformEffect and conformance _TransformEffect;
  if (!lazy protocol witness table cache variable for type _TransformEffect and conformance _TransformEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TransformEffect and conformance _TransformEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _TransformEffect and conformance _TransformEffect;
  if (!lazy protocol witness table cache variable for type _TransformEffect and conformance _TransformEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TransformEffect and conformance _TransformEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>()
{
  result = lazy protocol witness table cache variable for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>;
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<_TransformEffect>, lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect, &type metadata for _TransformEffect, type metadata accessor for GeometryEffectTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>);
  }

  return result;
}

void type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>()
{
  if (!lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<_TransformEffect>, lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect, &type metadata for _TransformEffect, type metadata accessor for DefaultGeometryEffectProvider);
    lazy protocol witness table accessor for type DefaultGeometryEffectProvider<_TransformEffect> and conformance DefaultGeometryEffectProvider<A>();
    v0 = type metadata accessor for GeometryEffectDisplayList();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultGeometryEffectProvider<_TransformEffect> and conformance DefaultGeometryEffectProvider<A>()
{
  result = lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<_TransformEffect> and conformance DefaultGeometryEffectProvider<A>;
  if (!lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<_TransformEffect> and conformance DefaultGeometryEffectProvider<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<_TransformEffect>, lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect, &type metadata for _TransformEffect, type metadata accessor for DefaultGeometryEffectProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<_TransformEffect> and conformance DefaultGeometryEffectProvider<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryEffectTransform<_Rotation3DEffect> and conformance GeometryEffectTransform<A>()
{
  result = lazy protocol witness table cache variable for type GeometryEffectTransform<_Rotation3DEffect> and conformance GeometryEffectTransform<A>;
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<_Rotation3DEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for GeometryEffectTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryEffectTransform<_Rotation3DEffect> and conformance GeometryEffectTransform<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryEffectDisplayList<_Rotation3DEffect> and conformance GeometryEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type GeometryEffectDisplayList<_Rotation3DEffect> and conformance GeometryEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type GeometryEffectDisplayList<_Rotation3DEffect> and conformance GeometryEffectDisplayList<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectDisplayList<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for GeometryEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryEffectDisplayList<_Rotation3DEffect> and conformance GeometryEffectDisplayList<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeometryEffectDisplayList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GeometryEffectDisplayList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 29) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>()
{
  result = lazy protocol witness table cache variable for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>;
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for GeometryEffectTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>);
  }

  return result;
}

void type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>()
{
  if (!lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for DefaultGeometryEffectProvider);
    lazy protocol witness table accessor for type DefaultGeometryEffectProvider<ScalePulseEffect> and conformance DefaultGeometryEffectProvider<A>();
    v0 = type metadata accessor for GeometryEffectDisplayList();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultGeometryEffectProvider<ScalePulseEffect> and conformance DefaultGeometryEffectProvider<A>()
{
  result = lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<ScalePulseEffect> and conformance DefaultGeometryEffectProvider<A>;
  if (!lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<ScalePulseEffect> and conformance DefaultGeometryEffectProvider<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for DefaultGeometryEffectProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<ScalePulseEffect> and conformance DefaultGeometryEffectProvider<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>()
{
  result = lazy protocol witness table cache variable for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>;
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for GeometryEffectTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>);
  }

  return result;
}

void type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>()
{
  if (!lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for DefaultGeometryEffectProvider);
    lazy protocol witness table accessor for type DefaultGeometryEffectProvider<GlassAppearanceScaleEffect> and conformance DefaultGeometryEffectProvider<A>();
    v0 = type metadata accessor for GeometryEffectDisplayList();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultGeometryEffectProvider<GlassAppearanceScaleEffect> and conformance DefaultGeometryEffectProvider<A>()
{
  result = lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<GlassAppearanceScaleEffect> and conformance DefaultGeometryEffectProvider<A>;
  if (!lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<GlassAppearanceScaleEffect> and conformance DefaultGeometryEffectProvider<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for DefaultGeometryEffectProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<GlassAppearanceScaleEffect> and conformance DefaultGeometryEffectProvider<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier()
{
  result = lazy protocol witness table cache variable for type FlexStateModifier and conformance FlexStateModifier;
  if (!lazy protocol witness table cache variable for type FlexStateModifier and conformance FlexStateModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexStateModifier and conformance FlexStateModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlexStateModifier and conformance FlexStateModifier;
  if (!lazy protocol witness table cache variable for type FlexStateModifier and conformance FlexStateModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexStateModifier and conformance FlexStateModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>()
{
  result = lazy protocol witness table cache variable for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>;
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<FlexStateModifier>, lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier, &type metadata for FlexStateModifier, type metadata accessor for GeometryEffectTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>);
  }

  return result;
}

void type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>()
{
  if (!lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<FlexStateModifier>, lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier, &type metadata for FlexStateModifier, type metadata accessor for DefaultGeometryEffectProvider);
    lazy protocol witness table accessor for type DefaultGeometryEffectProvider<FlexStateModifier> and conformance DefaultGeometryEffectProvider<A>();
    v0 = type metadata accessor for GeometryEffectDisplayList();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultGeometryEffectProvider<FlexStateModifier> and conformance DefaultGeometryEffectProvider<A>()
{
  result = lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<FlexStateModifier> and conformance DefaultGeometryEffectProvider<A>;
  if (!lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<FlexStateModifier> and conformance DefaultGeometryEffectProvider<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<FlexStateModifier>, lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier, &type metadata for FlexStateModifier, type metadata accessor for DefaultGeometryEffectProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<FlexStateModifier> and conformance DefaultGeometryEffectProvider<A>);
  }

  return result;
}

uint64_t static TimeDataFormatting.decode(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    type metadata accessor for AnyCodable<SafelyCodableRequirement>();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>, type metadata accessor for AnyCodable<SafelyCodableRequirement>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    outlined init with copy of Decodable & Encodable(v20, v15);
    type metadata accessor for Decodable & Encodable();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SafelyCodableResolvable);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v13, v16);
      outlined init with take of AnyTrackedValue(v16, v17);
      v5 = v18;
      v6 = v19;
      v7 = __swift_project_boxed_opaque_existential_1(v17, v18);
      a2[3] = v5;
      a2[4] = *(v6 + 24);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v20, type metadata accessor for AnyCodable<SafelyCodableRequirement>);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      outlined destroy of _DisplayList_AnyEffectAnimator?(v13, &lazy cache variable for type metadata for SafelyCodableResolvable?, &lazy cache variable for type metadata for SafelyCodableResolvable);
      v9 = type metadata accessor for DecodingError();
      swift_allocError();
      v11 = v10;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0, &lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context), type metadata accessor for @thick Any.Type, MEMORY[0x1E69E6B18]);
      outlined init with copy of Decodable & Encodable(v20, v15);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v15);
      *v11 = DynamicType;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v9);
      swift_willThrow();
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v20, type metadata accessor for AnyCodable<SafelyCodableRequirement>);
    }

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return result;
}

void type metadata accessor for AnyCodable<SafelyCodableRequirement>()
{
  if (!lazy cache variable for type metadata for AnyCodable<SafelyCodableRequirement>)
  {
    v0 = type metadata accessor for AnyCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyCodable<SafelyCodableRequirement>);
    }
  }
}

uint64_t outlined init with copy of Decodable & Encodable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t type metadata accessor for Decodable & Encodable()
{
  result = lazy cache variable for type metadata for Decodable & Encodable;
  if (!lazy cache variable for type metadata for Decodable & Encodable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Decodable & Encodable);
  }

  return result;
}

uint64_t TimeDataFormatting.Resolvable.replacingFormat<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v26 = a6;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v7, v17, v19);
  (*(v13 + 16))(v15, a1, a3);
  v23 = *(v7 + *(a2 + 64));
  v24 = *(a2 + 32);
  default argument 3 of TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)(&v27);
  return TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)(v21, v15, &v27, v17, a3, v24, a4, a5, v26, v23);
}

uint64_t TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v16 = *a3;
  static TimeDataFormatting.Resolvable.makeResolvable(from:format:secondsUpdateFrequencyBudget:sizeVariant:)(a9, a1, a2, &v16, a4, a5, a6, a7, a10, a8);
  (*(*(a5 - 8) + 8))(a2, a5);
  v14 = *(*(a4 - 8) + 8);

  return v14(a1, a4);
}

uint64_t static TimeDataFormatting.Resolvable.makeResolvable(from:format:secondsUpdateFrequencyBudget:sizeVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v40 = a1;
  v37 = *(a6 - 8);
  v38 = a3;
  v39 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41[0] = v23;
  v41[1] = v24;
  v41[2] = v25;
  v41[3] = v26;
  v27 = type metadata accessor for TimeDataFormatting.Configuration();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v34[-v28];
  v41[0] = *a4;
  v30 = v41[0];
  v31 = v38;
  v35 = static TimeDataFormatting.Configuration.makeConfiguration(from:format:sizeVariant:secondsUpdateFrequencyBudget:)(&v34[-v28], a2, a9, v38, v41, a5, a6, a7, a8);
  (*(v19 + 16))(v22, a2, a5);
  v32 = v36;
  (*(v37 + 16))(v36, v31, a6);
  v41[0] = v30;
  TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:configuration:sizeVariant:)(v22, v32, v29, v41, a5, a6, v40, a9);
  return v35 & 1;
}

uint64_t TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:configuration:sizeVariant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v13 = *a4;
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v14 = type metadata accessor for TimeDataFormatting.Resolvable();
  (*(*(a6 - 8) + 32))(a7 + v14[15], a2, a6);
  *(a7 + v14[16]) = a8;
  v15 = v14[17];
  v16 = type metadata accessor for TimeDataFormatting.Configuration();
  result = (*(*(v16 - 8) + 32))(a7 + v15, a3, v16);
  *(a7 + v14[18]) = v13;
  return result;
}

uint64_t TimeDataFormatting.Resolvable.resolve(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v70 = type metadata accessor for Locale();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v64 - v7;
  v8 = a2[4];
  v9 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  v75 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v64 - v11;
  v13 = a2[5];
  v83 = a2;
  v14 = a2[3];
  v76 = swift_getAssociatedTypeWitness();
  v73 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v64 - v15;
  v16 = type metadata accessor for AttributedString();
  v78 = *(v16 - 8);
  v79 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v81 = *(v18 - 8);
  v82 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v24 = a1;
  v25 = a1 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20);
  v26 = *v25;
  v68 = *(v25 + 8);
  v67 = v26;
  v27 = v9;
  if (v68)
  {

    v28 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v26);

    if ((v28 & 1) == 0)
    {
LABEL_7:
      v30 = v8;
      v32 = ResolvableStringResolutionContext.date.getter(v20);
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v32, 0.0, 0.0333333333);
      static Date.+ infix(_:_:)();
      v33 = v20;
      v31 = v24;
      (*(v81 + 8))(v33, v82);
      v71 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v29 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v26);
    if (!v29 || *(v29 + 72) != 1)
    {
      goto LABEL_7;
    }
  }

  v30 = v8;
  v31 = v24;
  ResolvableStringResolutionContext.date.getter(v23);
  v71 = 1;
LABEL_8:
  v34 = v27;
  *&v35 = v27;
  *(&v35 + 1) = v14;
  v36 = v83;
  *&v37 = v30;
  *(&v37 + 1) = v13;
  v86 = v35;
  v87 = v37;
  v38 = type metadata accessor for TimeDataFormatting.Configuration();
  TimeDataFormatting.Configuration.formatAndFrequency(for:)(&v86, &v85, v31, v38);
  v39 = v85;
  __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
  (*(v30 + 40))(v23, v27, v30);
  v40 = v72;
  dispatch thunk of FormatStyle.format(_:)();
  (*(v74 + 8))(v12, v75);
  v41 = v76;
  v42 = v77;
  (*(*(v36 + 48) + 8))(v76);
  (*(v73 + 8))(v40, v41);
  v43 = v23;
  if (v39 != 3)
  {
    v44 = *(&v87 + 1);
    v45 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
    LOBYTE(v85) = v39;
    if (DiscreteFormatStyle.needsRedaction<A>(for:evaluating:at:)(&v85, v84, v23, v44, v34, v45, v30))
    {
      v46 = v23;
      LOBYTE(v85) = v39;
      if (v68)
      {

        v47 = v65;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v67, v65);

        v48 = v70;
        v49 = v69;
      }

      else
      {
        v50 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v67);
        v48 = v70;
        v49 = v69;
        v47 = v65;
        if (v50)
        {
          (*(v69 + 16))(v65, &v50[*(*v50 + 248)], v70);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v51 = __swift_project_value_buffer(v48, static LocaleKey.defaultValue);
          (*(v49 + 16))(v47, v51, v48);
        }
      }

      AttributedString.redact(for:locale:)(&v85, v47);
      (*(v49 + 8))(v47, v48);
      v43 = v46;
    }
  }

  v52 = v79;
  v53 = v42;
  if (v41 != v79)
  {
    goto LABEL_27;
  }

  v54 = v43;
  v85 = 0x3FF0000000000000;
  if (v68)
  {

    v55 = v66;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v67, v66);

    v56 = v70;
    v57 = v69;
  }

  else
  {
    v58 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v67);
    v56 = v70;
    v57 = v69;
    v55 = v66;
    if (v58)
    {
      (*(v69 + 16))(v66, &v58[*(*v58 + 248)], v70);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v59 = __swift_project_value_buffer(v56, static LocaleKey.defaultValue);
      (*(v57 + 16))(v55, v59, v56);
    }
  }

  v60 = AttributedString.disableContentTransition(for:locale:)(&v85, v55);
  (*(v57 + 8))(v55, v56);
  v43 = v54;
  if ((v60 & 1) == 0)
  {
LABEL_27:
    v85 = 0x3FF0000000000000;
    TimeDataFormatting.Resolvable.disableContentTransition(on:for:date:isLuminanceReduced:)(v53, &v85, v43, v71, v83);
  }

  (*(v81 + 8))(v43, v82);
  v61 = v78;
  v62 = v80;
  (*(v78 + 32))(v80, v53, v52);
  (*(v61 + 56))(v62, 0, 1, v52);
  return __swift_destroy_boxed_opaque_existential_1(&v86);
}

BOOL DiscreteFormatStyle.needsRedaction<A>(for:evaluating:at:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a3;
  v13 = type metadata accessor for Date();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v55[-v16];
  v68 = a6;
  v67 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55[-v22];
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55[-v27];
  v33 = MEMORY[0x1EEE9AC00](v29);
  v35 = &v55[-v34];
  v36 = *a1;
  if (!v36)
  {
    return 0;
  }

  v59 = v32;
  v60 = v31;
  v61 = v30;
  v37 = *(a7 + 40);
  v38 = v66;
  v57 = a2;
  v58 = a5;
  v66 = a7;
  v37(v38, a5, a7, v33);
  dispatch thunk of DiscreteFormatStyle.discreteInput(after:)();
  v39 = *(v24 + 48);
  if (v39(v23, 1, AssociatedTypeWitness) == 1)
  {
    (*(v24 + 8))(v35, AssociatedTypeWitness);
    (*(v60 + 8))(v23, v61);
    return 0;
  }

  v56 = v36;
  v41 = v23;
  v42 = *(v24 + 32);
  v42(v28, v41, AssociatedTypeWitness);
  dispatch thunk of DiscreteFormatStyle.discreteInput(before:)();
  if (v39(v20, 1, AssociatedTypeWitness) == 1)
  {
    v43 = *(v24 + 8);
    v43(v28, AssociatedTypeWitness);
    v43(v35, AssociatedTypeWitness);
    (*(v60 + 8))(v20, v61);
    return 0;
  }

  v42(v59, v20, AssociatedTypeWitness);
  v44 = v66;
  v45 = *(v66 + 48);
  v46 = v58;
  v45(v28, v58, v66);
  v47 = v62;
  v45(v59, v46, v44);
  v48 = v65;
  Date.timeIntervalSince(_:)();
  v50 = v49;
  v51 = v64;
  v52 = *(v63 + 8);
  v52(v47, v64);
  v52(v48, v51);
  v53 = *(v24 + 8);
  v53(v59, AssociatedTypeWitness);
  v53(v28, AssociatedTypeWitness);
  v53(v35, AssociatedTypeWitness);
  v54 = 60.0;
  if (v56 != 2)
  {
    v54 = 1.0;
  }

  return v50 < v54;
}

void AttributedString.redact(for:locale:)(_BYTE *a1, uint64_t a2)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v155 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v154 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v152 = &v150 - v8;
  v158 = type metadata accessor for AttributedString.Index();
  v153 = *(v158 - 1);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v156 = &v150 - v11;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0, &lazy cache variable for type metadata for (Range<AttributedString.Index>, Calendar.Component.Magnitude?), type metadata accessor for Range<AttributedString.Index>, type metadata accessor for Calendar.Component.Magnitude?);
  v167 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v166 = &v150 - v13;
  type metadata accessor for Range<AttributedString.Index>();
  v151 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v171 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v176 = &v150 - v17;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)?, type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?));
  MEMORY[0x1EEE9AC00](v18 - 8);
  v168 = (&v150 - v19);
  type metadata accessor for (Calendar.Component.Magnitude, (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)();
  v173 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v172 = (&v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
  MEMORY[0x1EEE9AC00](v22 - 8);
  v169 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v164 = &v150 - v25;
  type metadata accessor for ReversedCollection<AttributedString.Runs>();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v178 = (&v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ReversedCollection<AttributedString.Runs>.Iterator();
  v163 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v170 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for AttributedString.Runs.Run();
  v30 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v183 = &v150 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v182 = &v150 - v35;
  type metadata accessor for IndexingIterator<AttributedString.Runs>();
  v185 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v177 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0]);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v175 = &v150 - v39;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field?, MEMORY[0x1E69684A8]);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = &v150 - v41;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v162 = &v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v184 = &v150 - v46;
  v47 = type metadata accessor for AttributedString.Runs.Index();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v150 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v150 - v52;
  v54 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v54);
  v179 = (&v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v56);
  v59 = *a1;
  if (*a1)
  {
    v150 = v42;
    v161 = v30;
    v174 = v59;
    v60 = (&v150 - v57);
    v180 = v58;
    AttributedString.runs.getter();
    v61 = lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
    v189 = v2;
    v62 = v61;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v188 = v62;
    v63 = dispatch thunk of Collection.distance(from:to:)();
    v64 = *(v48 + 8);
    v64(v50, v47);
    v186 = v64;
    v187 = v48 + 8;
    v64(v53, v47);
    v65 = v180;
    v66 = *(v180 + 8);
    v181 = v60;
    v160 = v180 + 8;
    v159 = v66;
    v66(v60, v54);
    v67 = v63 == 1;
    v68 = v53;
    if (v67)
    {
      type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute();
      lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute, MEMORY[0x1E6968438]);
      v69 = v184;
      AttributedString.subscript.getter();
      v70 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
      v71 = (*(*(v70 - 8) + 48))(v69, 1, v70);
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v69, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
      if (v71 == 1)
      {
        lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute();
        v72 = v150;
        AttributedString.subscript.getter();
        v73 = type metadata accessor for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
        v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v72, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field?, MEMORY[0x1E69684A8]);
        if (v74 == 1)
        {
          lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute();
          v75 = v175;
          AttributedString.subscript.getter();
          v76 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
          v77 = (*(*(v76 - 8) + 48))(v75, 1, v76);
          outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v75, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0]);
          if (v77 == 1)
          {
            v78 = v156;
            AttributedString.startIndex.getter();
            v79 = v157;
            AttributedString.endIndex.getter();
            lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
            v80 = v158;
            if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
            {
              __break(1u);
              return;
            }

            v81 = v153;
            v82 = *(v153 + 32);
            v83 = v152;
            v82(v152, v78, v80);
            v84 = v155;
            v82((v83 + *(v155 + 48)), v79, v80);
            v85 = v154;
            outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v83, v154, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
            v86 = *(v84 + 48);
            v87 = v176;
            v82(v176, v85, v80);
            v88 = *(v81 + 8);
            v88(v85 + v86, v80);
            outlined init with take of Range<AttributedString.Index>(v83, v85, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
            v82((v87 + *(v151 + 36)), (v85 + *(v84 + 48)), v80);
            v88(v85, v80);
            AttributedString.redactNumbers(in:)(v87);
            v89 = type metadata accessor for Range<AttributedString.Index>;
            v90 = v87;
            goto LABEL_43;
          }
        }
      }
    }

    v91 = v179;
    AttributedString.runs.getter();
    v92 = *(v65 + 16);
    v180 = v65 + 16;
    v158 = v92;
    (v92)(v181, v91, v54);
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
    v93 = v177;
    dispatch thunk of Sequence.makeIterator()();
    dispatch thunk of Collection.endIndex.getter();
    v184 = lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
    v94 = dispatch thunk of static Equatable.== infix(_:_:)();
    v185 = v68;
    v175 = v47;
    v186(v68, v47);
    v95 = v191;
    v96 = v162;
    if (v94)
    {
LABEL_13:
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v93, type metadata accessor for IndexingIterator<AttributedString.Runs>);
      v104 = v159;
      v159(v179, v54);
      LODWORD(v177) = 0;
    }

    else
    {
      v181 = (v161 + 16);
      v97 = (v161 + 8);
      while (1)
      {
        v98 = dispatch thunk of Collection.subscript.read();
        v99 = v182;
        (*v181)(v182);
        v98(v193, 0);
        dispatch thunk of Collection.formIndex(after:)();
        type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute();
        lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute, MEMORY[0x1E6968438]);
        AttributedString.Runs.Run.subscript.getter();
        (*v97)(v99, v95);
        v100 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
        if ((*(*(v100 - 8) + 48))(v96, 1, v100) != 1)
        {
          break;
        }

        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v96, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
        v101 = v185;
        dispatch thunk of Collection.endIndex.getter();
        v102 = v175;
        v103 = dispatch thunk of static Equatable.== infix(_:_:)();
        v186(v101, v102);
        if (v103)
        {
          goto LABEL_13;
        }
      }

      outlined destroy of AnyCodable<SafelyCodableRequirement>(v93, type metadata accessor for IndexingIterator<AttributedString.Runs>);
      v104 = v159;
      v159(v179, v54);
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v96, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
      LODWORD(v177) = 1;
    }

    v192 = 2;
    v105 = v178;
    AttributedString.runs.getter();
    v106 = v170;
    (v158)(v170, v105, v54);
    v107 = *(v163 + 36);
    dispatch thunk of Collection.endIndex.getter();
    v104(v105, v54);
    v108 = v107;
    v109 = v185;
    dispatch thunk of Collection.startIndex.getter();
    v110 = v175;
    v111 = dispatch thunk of static Equatable.== infix(_:_:)();
    v186(v109, v110);
    v112 = v168;
    v113 = v164;
    if (v111)
    {
LABEL_42:
      v89 = type metadata accessor for ReversedCollection<AttributedString.Runs>.Iterator;
      v90 = v106;
LABEL_43:
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v90, v89);
      return;
    }

    v181 = lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
    v179 = (v161 + 32);
    v180 = v161 + 16;
    v178 = (v161 + 8);
    v165 = a2;
    v182 = v108;
    while (1)
    {
      dispatch thunk of BidirectionalCollection.formIndex(before:)();
      v119 = v54;
      v120 = dispatch thunk of Collection.subscript.read();
      v121 = v183;
      v122 = v191;
      (*v180)(v183);
      v120(v193, 0);
      v123 = v190;
      (*v179)(v190, v121, v122);
      v124 = specialized getter of localeUsesDecimalSystem #1 in AttributedString.disableContentTransition(for:locale:)(&v192);
      v125 = v189;
      AttributedString.magnitude(of:locale:localeUsesDecimalSystem:)(v123, a2, v124 & 1, v112);
      type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)();
      v127 = v126;
      if ((*(*(v126 - 8) + 48))(v112, 1, v126) == 1)
      {
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v112, &lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)?, type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?));
        v114 = a2;
        v115 = v176;
        AttributedString.Runs.Run.range.getter();
        redact #1 (_:) in AttributedString.redact(for:locale:)(v115, v177, v125);
        v116 = v115;
        a2 = v114;
        v110 = v175;
        outlined destroy of AnyCodable<SafelyCodableRequirement>(v116, type metadata accessor for Range<AttributedString.Index>);
        (*v178)(v123, v122);
        v54 = v119;
      }

      else
      {
        v128 = *(v127 + 48);
        v129 = v173;
        v130 = *(v173 + 48);
        v131 = v172;
        *v172 = *v112;
        outlined init with take of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v112 + v128, v131 + v130);
        v132 = *v131;
        outlined init with take of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v131 + *(v129 + 48), v113);
        if (v174)
        {
          v54 = v119;
          if (v174 == 1)
          {
            if (v132 < 1.0)
            {
              goto LABEL_23;
            }
          }

          else if (v132 < 60.0)
          {
LABEL_23:
            v133 = v176;
            v134 = v190;
            AttributedString.Runs.Run.range.getter();
            redact #1 (_:) in AttributedString.redact(for:locale:)(v133, v177, v189);
            outlined destroy of AnyCodable<SafelyCodableRequirement>(v133, type metadata accessor for Range<AttributedString.Index>);
            outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v113, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
            (*v178)(v134, v191);
            goto LABEL_18;
          }
        }

        else
        {
          v54 = v119;
          if (v132 < 0.0333333333)
          {
            goto LABEL_23;
          }
        }

        v135 = v113;
        v136 = v113;
        v137 = v169;
        outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v135, v169, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)();
        v139 = v138;
        if ((*(*(v138 - 8) + 48))(v137, 1, v138) != 1)
        {
          v140 = v137 + *(v139 + 48);
          v141 = *v140;
          v142 = *(v140 + 8);
          v143 = v167;
          v144 = v166;
          v145 = v166 + *(v167 + 48);
          outlined init with take of Range<AttributedString.Index>(v137, v166, type metadata accessor for Range<AttributedString.Index>);
          *v145 = v141;
          *(v145 + 8) = v142;
          v146 = v144 + *(v143 + 48);
          v147 = *v146;
          v148 = *(v146 + 8);
          outlined init with take of Range<AttributedString.Index>(v144, v171, type metadata accessor for Range<AttributedString.Index>);
          v113 = v136;
          v106 = v170;
          if (v148 == 1)
          {
            if (one-time initialization token for zero != -1)
            {
              swift_once();
            }

            v147 = *&static Calendar.Component.Magnitude.zero;
          }

          if (v174)
          {
            v149 = v165;
            v112 = v168;
            v110 = v175;
            v54 = v119;
            if (v174 == 1)
            {
              if (v147 >= 1.0)
              {
                goto LABEL_39;
              }
            }

            else if (v147 >= 60.0)
            {
              goto LABEL_39;
            }

LABEL_38:
            redact #1 (_:) in AttributedString.redact(for:locale:)(v171, v177, v189);
          }

          else
          {
            v149 = v165;
            v112 = v168;
            v110 = v175;
            v54 = v119;
            if (v147 < 0.0333333333)
            {
              goto LABEL_38;
            }
          }

LABEL_39:
          outlined destroy of AnyCodable<SafelyCodableRequirement>(v171, type metadata accessor for Range<AttributedString.Index>);
          outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v113, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
          (*v178)(v190, v191);
          a2 = v149;
          goto LABEL_18;
        }

        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v136, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        (*v178)(v190, v191);
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v137, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        v113 = v136;
        v106 = v170;
      }

LABEL_18:
      v117 = v185;
      dispatch thunk of Collection.startIndex.getter();
      v118 = dispatch thunk of static Equatable.== infix(_:_:)();
      v186(v117, v110);
      if (v118)
      {
        goto LABEL_42;
      }
    }
  }
}

uint64_t AttributedString.disableContentTransition(for:locale:)(double *a1, uint64_t a2)
{
  v77 = a2;
  v78 = a1;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0, &lazy cache variable for type metadata for (Range<AttributedString.Index>, Calendar.Component.Magnitude?), type metadata accessor for Range<AttributedString.Index>, type metadata accessor for Calendar.Component.Magnitude?);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v60 - v4;
  type metadata accessor for Range<AttributedString.Index>();
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v60 - v8;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)?, type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?));
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v60 - v10);
  type metadata accessor for (Calendar.Component.Magnitude, (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)();
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v69 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
  MEMORY[0x1EEE9AC00](v14 - 8);
  v64 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v60 - v17;
  v18 = type metadata accessor for AttributedString.Runs.Index();
  v79 = *(v18 - 8);
  v80 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributedString.Runs.Run();
  v73 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v60 - v25;
  v26 = type metadata accessor for AttributedString.Runs();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v78;
  v83[0] = 2;
  v78 = v2;
  AttributedString.runs.getter();
  (*(v27 + 16))(v32, v29, v26);
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
  dispatch thunk of Collection.startIndex.getter();
  (*(v27 + 8))(v29, v26);
  LODWORD(v72) = 0;
  ++v79;
  v74 = (v73 + 4);
  v75 = (v73 + 2);
  ++v73;
LABEL_2:
  for (i = v11; ; outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(i, &lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)?, type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)))
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
    v35 = v80;
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v79)(v20, v35);
    if (v36)
    {
      break;
    }

    v37 = dispatch thunk of Collection.subscript.read();
    v38 = v76;
    (*v75)(v76);
    v37(v82, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v74)(v23, v38, v21);
    v39 = v77;
    v40 = specialized getter of localeUsesDecimalSystem #1 in AttributedString.disableContentTransition(for:locale:)(v83);
    v11 = i;
    AttributedString.magnitude(of:locale:localeUsesDecimalSystem:)(v23, v39, v40 & 1, i);
    type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)();
    v42 = v41;
    if ((*(*(v41 - 8) + 48))(i, 1, v41) != 1)
    {
      v43 = *(v42 + 48);
      v44 = v69;
      v45 = v70;
      v46 = *(v70 + 48);
      *v69 = *v11;
      outlined init with take of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v11 + v43, v44 + v46);
      v47 = *v44;
      v48 = v44 + *(v45 + 48);
      v49 = v71;
      outlined init with take of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v48, v71);
      if (v33 >= v47)
      {
        v53 = v65;
        AttributedString.Runs.Run.range.getter();
        lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
LABEL_10:
        v62 = AttributedString.subscript.modify();
        LODWORD(v72) = 1;
        v81 = 1;
        lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy();
        AttributedSubstring.subscript.setter();
        v62(v82, 0);
        outlined destroy of AnyCodable<SafelyCodableRequirement>(v53, type metadata accessor for Range<AttributedString.Index>);
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v71, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        (*v73)(v23, v21);
        goto LABEL_2;
      }

      v50 = v64;
      outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v49, v64, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
      type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)();
      v52 = v51;
      if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
      {
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v71, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        (*v73)(v23, v21);
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v50, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        goto LABEL_17;
      }

      v54 = v50 + *(v52 + 48);
      v72 = *v54;
      LODWORD(v62) = *(v54 + 8);
      v55 = v63;
      v61 = (v63 + *(v67 + 48));
      outlined init with take of Range<AttributedString.Index>(v50, v63, type metadata accessor for Range<AttributedString.Index>);
      v56 = v61;
      *v61 = v72;
      *(v56 + 8) = v62;
      v57 = v55 + *(v67 + 48);
      v58 = *v57;
      LODWORD(v72) = *(v57 + 8);
      outlined init with take of Range<AttributedString.Index>(v55, v66, type metadata accessor for Range<AttributedString.Index>);
      if (v72 == 1)
      {
        if (one-time initialization token for zero != -1)
        {
          swift_once();
        }

        v58 = *&static Calendar.Component.Magnitude.zero;
      }

      if (v33 >= v58)
      {
        lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v53 = v66;
        goto LABEL_10;
      }

      outlined destroy of AnyCodable<SafelyCodableRequirement>(v66, type metadata accessor for Range<AttributedString.Index>);
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v71, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
      (*v73)(v23, v21);
LABEL_17:
      LODWORD(v72) = 1;
      goto LABEL_2;
    }

    (*v73)(v23, v21);
  }

  outlined destroy of AnyCodable<SafelyCodableRequirement>(v32, type metadata accessor for IndexingIterator<AttributedString.Runs>);
  return v72 & 1;
}

uint64_t TimeDataFormatting.Resolvable.disableContentTransition(on:for:date:isLuminanceReduced:)(uint64_t a1, double *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v26 = a4;
  v27 = a3;
  v25[1] = a1;
  v28 = type metadata accessor for Date();
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - v14;
  v16 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  (*(v16 + 16))(v15, v6, a5, v18);
  (*(v16 + 56))(v15, 0, 1, a5);
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    return (*(v13 + 8))(v15, v12);
  }

  (*(v16 + 32))(v20, v15, a5);
  v30 = v26 & 1;
  WitnessTable = swift_getWitnessTable();
  TimelineSchedule.nextEntry(after:mode:limit:)(v27, &v30, 60, 0, a5, WitnessTable, v11);
  Date.timeIntervalSince(_:)();
  if (v21 >= v24)
  {
    v29 = 1;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy();
    AttributedString.subscript.setter();
  }

  (*(v9 + 8))(v11, v28);
  return (*(v16 + 8))(v20, a5);
}

uint64_t TimeDataFormatting.Resolvable.schedule.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v3, a1);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, a1);
}

uint64_t TimeDataFormatting.Resolvable.sizeVariant(_:)(uint64_t result, void *a2, uint64_t a3)
{
  v4 = *(v3 + *(a3 + 72));
  if (__OFADD__(v4, *a2))
  {
    __break(1u);
  }

  else
  {
    v5 = *(a3 + 60);
    v6 = *(v3 + *(a3 + 64));
    v7 = v4 + *a2;
    return static TimeDataFormatting.Resolvable.makeResolvable(from:format:secondsUpdateFrequencyBudget:sizeVariant:)(result, v3, v3 + v5, &v7, *(a3 + 16), *(a3 + 24), *(a3 + 32), *(a3 + 40), v6, *(a3 + 48)) & 1;
  }

  return result;
}

uint64_t TimeDataFormatting.Resolvable.makePlatformAttributes(resolver:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(&v28 - v19, v3 + *(v17 + 60), v11, v16);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for StyledFormatStyle);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v30, v32);
    v28 = v14;
    v20 = v6;
    v21 = v33;
    v22 = v34;
    __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    (*(v22 + 16))(a1, v21, v22);
    v23 = v9;
    (*(v7 + 16))(v9, v3, v20);
    outlined init with copy of AnyTrackedValue(v32, v30);
    v24 = v28;
    swift_dynamicCast();
    v25 = *(v3 + *(a2 + 64));
    v26 = *(v3 + *(a2 + 72));
    (*(*(a2 - 8) + 8))(v3, a2);
    v29 = v26;
    TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)(v23, v24, &v29, v20, v11, *(a2 + 32), *(a2 + 40), *(a2 + 48), v3, v25);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    return outlined destroy of _DisplayList_AnyEffectAnimator?(v30, &lazy cache variable for type metadata for StyledFormatStyle?, &lazy cache variable for type metadata for StyledFormatStyle);
  }
}

BOOL static TimeDataFormatting.Resolvable.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v12 = type metadata accessor for TimeDataFormatting.Resolvable(), (dispatch thunk of static Equatable.== infix(_:_:)()) && *(a1 + v12[16]) == *(a2 + v12[16]) && (static TimeDataFormatting.Configuration.== infix(_:_:)(a1 + v12[17], a2 + v12[17], a3, a4, a5, a6))
  {
    return *(a1 + v12[18]) == *(a2 + v12[18]);
  }

  else
  {
    return 0;
  }
}

uint64_t TimeDataFormatting.Resolvable.hash(into:)(uint64_t a1, uint64_t a2)
{
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  v5 = *(v2 + *(a2 + 64));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v5);
  v6 = type metadata accessor for TimeDataFormatting.Configuration();
  v7 = TimeDataFormatting.Configuration.hash(into:)(a1, v6);
  return MEMORY[0x193AC11A0](*(v2 + *(a2 + 72)), v7);
}

Swift::Int TimeDataFormatting.Resolvable.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  TimeDataFormatting.Resolvable.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataFormatting.Resolvable<A, B>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  TimeDataFormatting.Resolvable.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t static TimeDataFormatting.Resolvable.encode(_:to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v9 = type metadata accessor for TimeDataFormatting.Resolvable();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17[-1] - v11;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  (*(v10 + 16))(v12, a1, v9);
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  AnyCodable.init<A>(_:)(v12, v9, WitnessTable, v14, v17);
  __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  type metadata accessor for AnyCodable<SafelyCodableRequirement>();
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>, type metadata accessor for AnyCodable<SafelyCodableRequirement>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  outlined destroy of AnyCodable<SafelyCodableRequirement>(v17, type metadata accessor for AnyCodable<SafelyCodableRequirement>);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t TimeDataFormatting.Resolvable.representation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v11 = *v10;
  v12 = *(v7 + 16);
  v12(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v8);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SafelyCodableResolvable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v17, v19);
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    LOBYTE(v17[0]) = v11;
    (*(v14 + 48))(v17, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    outlined destroy of _DisplayList_AnyEffectAnimator?(v17, &lazy cache variable for type metadata for SafelyCodableResolvable?, &lazy cache variable for type metadata for SafelyCodableResolvable);
    a3[3] = a2;
    a3[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (v12)(boxed_opaque_existential_1, v4, a2);
  }
}

uint64_t AttributedString.magnitude(of:locale:localeUsesDecimalSystem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, double *a4@<X8>)
{
  v100 = a2;
  v93 = a3;
  v102 = a4;
  v5 = type metadata accessor for AttributedString.CharacterView();
  v88 = *(v5 - 8);
  v89 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for AttributedSubstring();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v83 - v11;
  v12 = type metadata accessor for AttributedString.Index();
  v97 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v103 = v18;
  v99 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v83 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v83 - v23;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v83 - v25;
  v27 = type metadata accessor for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field?, MEMORY[0x1E69684A8]);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v83 - v32;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v83 - v36;
  v38 = *(v15 + 56);
  v104 = v37;
  v38(v35);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute();
  AttributedString.Runs.Run.subscript.getter();
  if ((*(v28 + 48))(v33, 1, v27) != 1)
  {
    (*(v28 + 16))(v30, v33, v27);
    v43 = (*(v28 + 88))(v30, v27);
    if (v43 == *MEMORY[0x1E6968490])
    {
      *&v44 = 604800.0;
    }

    else if (v43 == *MEMORY[0x1E6968480])
    {
      *&v44 = 86400.0;
    }

    else if (v43 == *MEMORY[0x1E6968488])
    {
      *&v44 = 3600.0;
    }

    else if (v43 == *MEMORY[0x1E6968498])
    {
      *&v44 = 60.0;
    }

    else
    {
      v45 = 1.0;
      if (v43 == *MEMORY[0x1E69684A0])
      {
        goto LABEL_14;
      }

      if (v43 == *MEMORY[0x1E6968470])
      {
        v45 = 0.000001;
        goto LABEL_14;
      }

      if (v43 == *MEMORY[0x1E6968478])
      {
        v45 = 0.001;
        goto LABEL_14;
      }

      if (v43 == *MEMORY[0x1E6968468])
      {
        v45 = 0.000000001;
        goto LABEL_14;
      }

      (*(v28 + 8))(v30, v27);
      *&v44 = INFINITY;
    }

    v45 = *&v44;
LABEL_14:
    (*(v28 + 8))(v33, v27);
    goto LABEL_15;
  }

  outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v33, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field?, MEMORY[0x1E69684A8]);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute();
  AttributedString.Runs.Run.subscript.getter();
  v39 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v26, 1, v39) == 1)
  {
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v26, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0]);
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v104, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
    type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)();
    return (*(*(v41 - 8) + 56))(v102, 1, 1, v41);
  }

  AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.magnitude.getter(v105);
  v45 = v105[0];
  (*(v40 + 8))(v26, v39);
LABEL_15:
  v46 = v104;
  specialized getter of decimalSeparatorRange #1 in AttributedString.magnitude(of:locale:localeUsesDecimalSystem:)(v104, v100, v101, a1, v17);
  v47 = v103;
  if ((*(v99 + 48))(v17, 1, v103) == 1)
  {
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v46, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
    outlined destroy of AnyCodable<SafelyCodableRequirement>(v17, type metadata accessor for Range<AttributedString.Index>?);
    type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)();
    v49 = v48;
    v50 = *(v48 + 48);
    v51 = v102;
    *v102 = v45;
    type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)();
    (*(*(v52 - 8) + 56))(v51 + v50, 1, 1, v52);
    v53 = *(*(v49 - 8) + 56);
    v54 = v51;
    return v53(v54, 0, 1, v49);
  }

  v55 = v17;
  v56 = v98;
  outlined init with take of Range<AttributedString.Index>(v55, v98, type metadata accessor for Range<AttributedString.Index>);
  v57 = *(v47 + 36);
  v58 = v95;
  AttributedString.Runs.Run.range.getter();
  v59 = v96;
  v60 = v97;
  v61 = *(v97 + 16);
  v61(v96, v58 + *(v47 + 36), v12);
  outlined destroy of AnyCodable<SafelyCodableRequirement>(v58, type metadata accessor for Range<AttributedString.Index>);
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v62 = v90;
    v61(v90, v56 + v57, v12);
    v63 = v92;
    v64 = *(v60 + 32);
    v64(v62 + *(v92 + 48), v59, v12);
    v65 = v91;
    outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v62, v91, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v66 = *(v63 + 48);
    v67 = v94;
    v64(v94, v65, v12);
    v68 = *(v60 + 8);
    v68(v65 + v66, v12);
    v69 = v103;
    outlined init with take of Range<AttributedString.Index>(v62, v65, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v64(v67 + *(v69 + 36), (v65 + *(v63 + 48)), v12);
    v68(v65, v12);
    if ((v93 & 1) == 0)
    {
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v98, type metadata accessor for Range<AttributedString.Index>);
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v104, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
      type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)();
      v49 = v80;
      v75 = v102;
      v76 = v102 + *(v80 + 48);
      *v102 = v45;
      type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)();
      v78 = v81;
      v82 = v76 + *(v81 + 48);
      outlined init with take of Range<AttributedString.Index>(v67, v76, type metadata accessor for Range<AttributedString.Index>);
      *v82 = 0;
      *(v82 + 8) = 1;
LABEL_25:
      (*(*(v78 - 8) + 56))(v76, 0, 1, v78);
      v53 = *(*(v49 - 8) + 56);
      v54 = v75;
      return v53(v54, 0, 1, v49);
    }

    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
    v70 = v84;
    AttributedString.subscript.getter();
    v71 = v87;
    AttributedSubstring.characters.getter();
    (*(v85 + 8))(v70, v86);
    v72 = AttributedString.CharacterView._count.getter();
    (*(v88 + 8))(v71, v89);
    outlined destroy of AnyCodable<SafelyCodableRequirement>(v98, type metadata accessor for Range<AttributedString.Index>);
    result = outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v104, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
    if ((v72 & 0x8000000000000000) == 0)
    {
      v73 = v45;
      if (v72)
      {
        v73 = v45;
        do
        {
          v73 = v73 / 10.0;
          --v72;
        }

        while (v72);
      }

      type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)();
      v49 = v74;
      v75 = v102;
      v76 = v102 + *(v74 + 48);
      *v102 = v45;
      type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)();
      v78 = v77;
      v79 = v76 + *(v77 + 48);
      outlined init with take of Range<AttributedString.Index>(v67, v76, type metadata accessor for Range<AttributedString.Index>);
      *v79 = v73;
      *(v79 + 8) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AttributedString.redactNumbers(in:)(uint64_t a1)
{
  v45 = a1;
  v2 = type metadata accessor for AttributedString.Index();
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  v7 = type metadata accessor for AttributedString.CharacterView();
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AttributedSubstring();
  v11 = *(v41 - 1);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(0, &lazy cache variable for type metadata for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>, MEMORY[0x1E69E6EA0]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - v15;
  type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(0, &lazy cache variable for type metadata for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator, MEMORY[0x1E69E6E98]);
  v44 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36 - v18;
  type metadata accessor for Range<AttributedString.Index>();
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  v45 = v1;
  AttributedString.subscript.getter();
  AttributedSubstring.characters.getter();
  (*(v11 + 8))(v13, v41);
  v20 = *(v8 + 16);
  v21 = v42;
  v20(v16, v10, v42);
  type metadata accessor for DefaultIndices<AttributedString.CharacterView>();
  v23 = v22;
  v40 = v22;
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  dispatch thunk of Collection.startIndex.getter();
  v24 = *(v23 + 40);
  dispatch thunk of Collection.endIndex.getter();
  v25 = *(v43 + 8);
  v43 += 8;
  v41 = v25;
  v25(v10, v21);
  outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v16, v19, type metadata accessor for DefaultIndices<AttributedString.CharacterView>);
  v26 = *(v44 + 44);
  v27 = v36;
  v28 = *(v36 + 16);
  v44 = v36 + 16;
  v29 = v28;
  v28(&v19[v26], &v16[v24], v2);
  outlined destroy of AnyCodable<SafelyCodableRequirement>(v16, type metadata accessor for DefaultIndices<AttributedString.CharacterView>);
  v30 = *(v40 + 36);
  v39 = lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  v40 = v30;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v38 = lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
    v31 = (v27 + 8);
    do
    {
      v32 = v42;
      dispatch thunk of BidirectionalCollection.formIndex(before:)();
      v29(v6, &v19[v26], v2);
      AttributedString.characters.getter();
      AttributedString.CharacterView.subscript.getter();
      v41(v10, v32);
      v33 = Character.isNumber.getter();

      if (v33)
      {
        v29(v37, v6, v2);
        v34 = AttributedString.characters.modify();
        AttributedString.CharacterView.subscript.setter();
        v34(v46, 0);
      }

      (*v31)(v6, v2);
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  return outlined destroy of ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator(v19);
}

uint64_t redact #1 (_:) in AttributedString.redact(for:locale:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?)();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v40 - v18;
  v20 = type metadata accessor for AttributedSubstring();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return AttributedString.redactNumbers(in:)(a1);
  }

  type metadata accessor for Range<AttributedString.Index>();
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  v40[0] = a1;
  v40[1] = a3;
  AttributedString.subscript.getter();
  type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute();
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute, MEMORY[0x1E6968438]);
  AttributedSubstring.subscript.getter();
  (*(v21 + 8))(v23, v20);
  v25 = v43;
  v24 = v44;
  (*(v43 + 104))(v16, *MEMORY[0x1E69683F8], v44);
  (*(v25 + 56))(v16, 0, 1, v24);
  v26 = *(v9 + 48);
  v27 = MEMORY[0x1E6968400];
  outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v19, v11, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
  outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v16, &v11[v26], &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, v27);
  v28 = *(v25 + 48);
  if (v28(v11, 1, v24) != 1)
  {
    v31 = v25;
    v32 = v42;
    outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v11, v42, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
    if (v28(&v11[v26], 1, v44) != 1)
    {
      v34 = &v11[v26];
      v35 = v41;
      v36 = v44;
      (*(v31 + 32))(v41, v34, v44);
      lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component, MEMORY[0x1E6968400]);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v31 + 8);
      v38(v35, v36);
      v39 = MEMORY[0x1E6968400];
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v16, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v19, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, v39);
      v38(v32, v36);
      result = outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v11, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, v39);
      if ((v37 & 1) == 0)
      {
        return result;
      }

      return AttributedString.redact(_:)(v40[0]);
    }

    v33 = MEMORY[0x1E6968400];
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v16, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v19, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, v33);
    (*(v31 + 8))(v32, v44);
    return outlined destroy of AnyCodable<SafelyCodableRequirement>(v11, type metadata accessor for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?));
  }

  v29 = MEMORY[0x1E6968400];
  outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v16, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
  outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v19, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, v29);
  if (v28(&v11[v26], 1, v44) != 1)
  {
    return outlined destroy of AnyCodable<SafelyCodableRequirement>(v11, type metadata accessor for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?));
  }

  outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v11, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
  return AttributedString.redact(_:)(v40[0]);
}

uint64_t AttributedString.redact(_:)(uint64_t a1)
{
  v40 = a1;
  v2 = type metadata accessor for AttributedString.Index();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString.CharacterView();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AttributedSubstring();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(0, &lazy cache variable for type metadata for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>, MEMORY[0x1E69E6EA0]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - v12;
  type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(0, &lazy cache variable for type metadata for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator, MEMORY[0x1E69E6E98]);
  v38 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - v15;
  type metadata accessor for Range<AttributedString.Index>();
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  v40 = v1;
  AttributedString.subscript.getter();
  AttributedSubstring.characters.getter();
  (*(v8 + 8))(v10, v36);
  v17 = v7;
  (*(v5 + 16))(v13, v7, v4);
  type metadata accessor for DefaultIndices<AttributedString.CharacterView>();
  v19 = v18;
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  dispatch thunk of Collection.startIndex.getter();
  v20 = *(v19 + 40);
  v21 = v37;
  dispatch thunk of Collection.endIndex.getter();
  (*(v5 + 8))(v17, v4);
  outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v13, v16, type metadata accessor for DefaultIndices<AttributedString.CharacterView>);
  v22 = *(v38 + 44);
  v24 = *(v21 + 16);
  v23 = v21 + 16;
  v25 = &v13[v20];
  v26 = v24;
  v24(&v16[v22], v25, v2);
  outlined destroy of AnyCodable<SafelyCodableRequirement>(v13, type metadata accessor for DefaultIndices<AttributedString.CharacterView>);
  v27 = lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v37 = lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
    v38 = v22;
    do
    {
      dispatch thunk of BidirectionalCollection.formIndex(before:)();
      v26(v39, &v16[v22], v2);
      v28 = v16;
      v29 = v27;
      v30 = v2;
      v31 = v26;
      v32 = v23;
      v33 = AttributedString.characters.modify();
      AttributedString.CharacterView.subscript.setter();
      v33(v41, 0);
      v23 = v32;
      v26 = v31;
      v2 = v30;
      v27 = v29;
      v16 = v28;
      v22 = v38;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  return outlined destroy of ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator(v16);
}

uint64_t specialized getter of localeUsesDecimalSystem #1 in AttributedString.disableContentTransition(for:locale:)(_BYTE *a1)
{
  v2 = type metadata accessor for Locale.NumberingSystem();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = *a1;
  if (v9 == 2)
  {
    Locale.numberingSystem.getter();
    MEMORY[0x193ABDAD0](1853120876, 0xE400000000000000);
    LOBYTE(v9) = MEMORY[0x193ABDAB0](v8, v5);
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
    swift_beginAccess();
    *a1 = v9 & 1;
  }

  return v9 & 1;
}

uint64_t specialized getter of decimalSeparatorRange #1 in AttributedString.magnitude(of:locale:localeUsesDecimalSystem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38[1] = a4;
  v41 = a3;
  v46 = a2;
  v51 = a5;
  v6 = type metadata accessor for AttributedString.CharacterView();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedSubstring();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v50 = v11;
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v47 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v38 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v38 - v25;
  v49 = a1;
  outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(a1, v38 - v25, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
  v48 = v16;
  v27 = *(v16 + 48);
  if (v27(v26, 1, v15) == 1)
  {
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v26, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
    v28 = Locale.decimalSeparator.getter();
    if (v29)
    {
      v30 = v28;
      v31 = v29;
      AttributedString.Runs.Run.range.getter();
      lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
      AttributedString.subscript.getter();
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v13, type metadata accessor for Range<AttributedString.Index>);
      v32 = v42;
      AttributedSubstring.characters.getter();
      (*(v39 + 8))(v10, v40);
      v52 = v30;
      v53 = v31;
      lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
      lazy protocol witness table accessor for type String and conformance String();
      v33 = v44;
      BidirectionalCollection<>.firstRange<A>(of:)();
      (*(v43 + 8))(v32, v33);
      v34 = *(v48 + 56);
      v34(v23, 0, 1, v15);

      if (v27(v23, 1, v15) != 1)
      {
        outlined init with take of Range<AttributedString.Index>(v23, v18, type metadata accessor for Range<AttributedString.Index>?);
LABEL_9:
        v35 = v47;
        outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v18, v47, type metadata accessor for Range<AttributedString.Index>?);
        v34(v35, 0, 1, v15);
        v36 = v49;
        swift_beginAccess();
        outlined assign with take of Range<AttributedString.Index>??(v35, v36);
        return outlined init with take of Range<AttributedString.Index>(v18, v51, type metadata accessor for Range<AttributedString.Index>?);
      }
    }

    else
    {
      v34 = *(v48 + 56);
      v34(v23, 1, 1, v15);
    }

    (*(v45 + 56))(v18, 1, 1, v50);
    if (v27(v23, 1, v15) != 1)
    {
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v23, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
    }

    goto LABEL_9;
  }

  v18 = v26;
  return outlined init with take of Range<AttributedString.Index>(v18, v51, type metadata accessor for Range<AttributedString.Index>?);
}

double TimeDataFormattingContainer.init(resolvable:)@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SafelyCodableResolvable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v4, v6);
    outlined init with take of AnyTrackedValue(v6, v7);
    result = *v7;
    v3 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v3;
    *(a1 + 32) = v8;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    outlined destroy of _DisplayList_AnyEffectAnimator?(v4, &lazy cache variable for type metadata for SafelyCodableResolvable?, &lazy cache variable for type metadata for SafelyCodableResolvable);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t TimeDataFormattingContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  static TimeDataFormatting.decode(from:)(a1, v16);
  if (!v2)
  {
    outlined init with copy of ResolvableStringAttribute?(v16, v10);
    if (v11)
    {
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttribute);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SafelyCodableResolvable);
      if (swift_dynamicCast())
      {
        if (*(&v13 + 1))
        {
          outlined destroy of _DisplayList_AnyEffectAnimator?(v16, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
          outlined init with take of AnyTrackedValue(&v12, v15);
          outlined init with take of AnyTrackedValue(v15, v17);
          v5 = v17[1];
          *a2 = v17[0];
          *(a2 + 16) = v5;
          *(a2 + 32) = v18;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }

      else
      {
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
      }
    }

    else
    {
      outlined destroy of _DisplayList_AnyEffectAnimator?(v10, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    outlined destroy of _DisplayList_AnyEffectAnimator?(&v12, &lazy cache variable for type metadata for SafelyCodableResolvable?, &lazy cache variable for type metadata for SafelyCodableResolvable);
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0, &lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context), type metadata accessor for @thick Any.Type, MEMORY[0x1E69E6B18]);
    *v8 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SafelyCodableResolvable);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6AF8], v6);
    swift_willThrow();
    outlined destroy of _DisplayList_AnyEffectAnimator?(v16, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TimeDataFormattingContainer.encode(to:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t TimeDataFormattingContainer.text.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t TimeDataFormattingContainer.representation(for:)(char *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v6 = v2;
  return (*(*(*(v4 + 24) + 16) + 32))(&v6, v3);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TimeDataFormattingContainer(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t TimeDataFormatting.Resolvable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v38 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v35 - v9;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v43 = v14;
  v44 = &v35 - v15;
  v48[0] = v16;
  v48[1] = v17;
  v48[2] = v14;
  v48[3] = v18;
  v39 = v18;
  v37 = v19;
  v48[4] = v19;
  type metadata accessor for TimeDataFormatting.Resolvable.CodingKeys();
  swift_getWitnessTable();
  v46 = type metadata accessor for KeyedDecodingContainer();
  v20 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v22 = &v35 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v45 = v22;
  v23 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v24 = v41;
    v25 = v42;
    v47 = v20;
    v26 = v40;
    LOBYTE(v48[0]) = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v48[0]) = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v48[0]) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v27 = v26;
    v28 = v25;
    v29 = v44;
    v31 = v30;
    (*(v26 + 16))(v28, v44, a2);
    v32 = v38;
    v33 = v35;
    (*(v38 + 16))(v35, v24, a3);
    v48[0] = 0;
    TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)(v42, v33, v48, a2, a3, v43, v39, v37, v36, v31);
    (*(v32 + 8))(v24, a3);
    (*(v27 + 8))(v29, a2);
    (*(v47 + 8))(v45, v46);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TimeDataFormatting.Resolvable.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v14 = *(a2 + 16);
  v15 = v14;
  v4 = *(a2 + 32);
  v12 = v3;
  v13 = v4;
  v16 = v3;
  v17 = v4;
  v11 = *(a2 + 40);
  v18 = v11;
  type metadata accessor for TimeDataFormatting.Resolvable.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  v9 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t TimeDataFormatting.Resolvable.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TimeDataFormatting.Resolvable.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v5._countAndFlagsBits = *a1;
  v5._object = v3;
  result = TimeDataFormatting.Resolvable.CodingKeys.init(rawValue:)(v5);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18D3A7A28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = TimeDataFormatting.Resolvable.CodingKeys.init(stringValue:)(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6]);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized TimeDataFormatting.Resolvable.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static SafelyCodableRequirement.checkedCodableType<A>(_:)(uint64_t a1)
{
  v2 = swift_conformsToProtocol2();
  result = 0;
  if (v2)
  {
    if (a1)
    {
      return a1;
    }
  }

  return result;
}

uint64_t specialized static BinaryFloatingPoint<>.random<A>(in:using:)(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x193AC4840](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v6, a2, a3);
  }

  return result;
}

void type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)()
{
  if (!lazy cache variable for type metadata for (lower: AttributedString.Index, upper: AttributedString.Index))
  {
    type metadata accessor for AttributedString.Index();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: AttributedString.Index, upper: AttributedString.Index));
    }
  }
}

void type metadata accessor for (@thick Any.Type, DecodingError.Context)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for Range<AttributedString.Index>()
{
  if (!lazy cache variable for type metadata for Range<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<AttributedString.Index>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for Calendar.Component.Magnitude?()
{
  if (!lazy cache variable for type metadata for Calendar.Component.Magnitude?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Calendar.Component.Magnitude?);
    }
  }
}

void type metadata accessor for Range<AttributedString.Index>??(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)()
{
  if (!lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?))
  {
    type metadata accessor for Range<AttributedString.Index>??(255, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?));
    }
  }
}

void type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)()
{
  if (!lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?))
  {
    type metadata accessor for Range<AttributedString.Index>();
    type metadata accessor for Calendar.Component.Magnitude?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
    }
  }
}

void type metadata accessor for (Calendar.Component.Magnitude, (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)()
{
  if (!lazy cache variable for type metadata for (Calendar.Component.Magnitude, (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?))
  {
    type metadata accessor for Range<AttributedString.Index>??(255, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Calendar.Component.Magnitude, (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?));
    }
  }
}

void type metadata accessor for ReversedCollection<AttributedString.Runs>()
{
  if (!lazy cache variable for type metadata for ReversedCollection<AttributedString.Runs>)
  {
    type metadata accessor for AttributedString.Runs();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
    v0 = type metadata accessor for ReversedCollection();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ReversedCollection<AttributedString.Runs>);
    }
  }
}

void type metadata accessor for ReversedCollection<AttributedString.Runs>.Iterator()
{
  if (!lazy cache variable for type metadata for ReversedCollection<AttributedString.Runs>.Iterator)
  {
    type metadata accessor for AttributedString.Runs();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
    v0 = type metadata accessor for ReversedCollection.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ReversedCollection<AttributedString.Runs>.Iterator);
    }
  }
}

void type metadata accessor for IndexingIterator<AttributedString.Runs>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<AttributedString.Runs>)
  {
    type metadata accessor for AttributedString.Runs();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<AttributedString.Runs>);
    }
  }
}

uint64_t outlined destroy of AnyCodable<SafelyCodableRequirement>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute);
  }

  return result;
}

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ResolvableStringAttribute?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollStateRequest?(0, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for TimeDataFormatting.Resolvable<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> TimeDataFormatting.Resolvable<A, B>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t type metadata completion function for TimeDataFormatting.Resolvable()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TimeDataFormatting.Configuration();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataFormatting.Resolvable(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  v9 = v6 + v8;
  v10 = (v6 + v8) & ~v8;
  v11 = *(v7 + 64);
  v12 = *(v5 + 80);
  v13 = v12 & 0xF8 | 7;
  v14 = v6 + 7;
  v15 = (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((((-8 - v11 - v10) | 7) - v13 - 8) | v13) - v15 - 48;
  if ((v13 | v8) == 7 && ((v12 | *(v7 + 80)) & 0x100000) == 0 && v16 >= 0xFFFFFFFFFFFFFFE7)
  {
    v21 = ~v8;
    v37 = *(a3 + 16);
    v38 = v15 + 40;
    v22 = *(v5 + 16);
    v22(a1, a2, v37);
    v39 = a1;
    v24 = (a1 + v9) & v21;
    v25 = (a2 + v9) & v21;
    (*(v7 + 16))(v24, v25, v4);
    *((v24 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v25 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    v26 = v24 + v11 + 15;
    v27 = v25 + v11 + 15;
    v22((v26 & 0xFFFFFFFFFFFFFFF8), (v27 & 0xFFFFFFFFFFFFFFF8), v37);
    v28 = (v14 + (v26 & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v14 + (v27 & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFF8;
    v30 = *(v29 + 24);
    *(v28 + 24) = v30;
    *(v28 + 32) = *(v29 + 32);
    (**(v30 - 8))(v28, v29);
    v31 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v29 + 47) & 0xFFFFFFFFFFFFFFF8;
    v33 = *(v32 + 24);
    if (v33 < 0xFFFFFFFF)
    {
      v34 = *v32;
      v35 = *(v32 + 16);
      *(v31 + 32) = *(v32 + 32);
      *v31 = v34;
      *(v31 + 16) = v35;
    }

    else
    {
      *(v31 + 24) = v33;
      *(v31 + 32) = *(v32 + 32);
      (**(v33 - 8))();
    }

    v20 = v39;
    *((v26 + v38) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v38) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v19 = *a2;
    *a1 = *a2;
    v20 = (v19 + (((v13 | v8) + 16) & ~(v13 | v8)));
  }

  return v20;
}

unint64_t destroy for TimeDataFormatting.Resolvable(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(a1, v4);
  v7 = *(v5 + 64);
  v8 = v7 + a1;
  v9 = *(*(a2 + 24) - 8);
  v10 = v9 + 8;
  v11 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v9 + 8))(v11);
  v12 = *(v5 + 80) & 0xF8 | 7;
  v13 = (((*(v10 + 56) + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  v6(v13, v4);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v14);
  result = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (*(result + 24) >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for TimeDataFormatting.Resolvable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 16))(v13, v14);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(v7 + 80) & 0xF8;
  v19 = v18 + 15;
  v20 = v16 + v18 + 15;
  v21 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 & v21;
  v23 = (v17 + v19) & v21;
  v8(v20 & v21, v23, v6);
  v24 = (v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v9 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 24);
  *(v24 + 24) = v26;
  *(v24 + 32) = *(v25 + 32);
  (**(v26 - 8))(v24, v25);
  v27 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v28 + 24);
  if (v29 < 0xFFFFFFFF)
  {
    v30 = *v28;
    v31 = *(v28 + 16);
    *(v27 + 32) = *(v28 + 32);
    *v27 = v30;
    *(v27 + 16) = v31;
  }

  else
  {
    *(v27 + 24) = v29;
    *(v27 + 32) = *(v28 + 32);
    (**(v29 - 8))();
  }

  v32 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(v22 + v32) = *(v23 + v32);
  return a1;
}

uint64_t assignWithCopy for TimeDataFormatting.Resolvable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 24);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 24))(v13, v14);
  v15 = *(v11 + 40) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(v7 + 80) & 0xF8;
  v19 = v18 + 15;
  v20 = v16 + v18 + 15;
  v21 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 & v21;
  v23 = (v17 + v19) & v21;
  v8(v20 & v21, v23, v6);
  v24 = ((v9 + 7 + v23) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(((v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8), v24);
  v25 = (((v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 24);
  if (*(v25 + 24) < 0xFFFFFFFFuLL)
  {
    if (v27 < 0xFFFFFFFF)
    {
      v31 = *v26;
      v32 = *(v26 + 16);
      *(v25 + 32) = *(v26 + 32);
      *v25 = v31;
      *(v25 + 16) = v32;
    }

    else
    {
      *(v25 + 24) = v27;
      *(v25 + 32) = *(v26 + 32);
      (**(v27 - 8))();
    }
  }

  else if (v27 < 0xFFFFFFFF)
  {
    v28 = (((v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
    __swift_destroy_boxed_opaque_existential_1(v25);
    v29 = *v26;
    v30 = *(v26 + 16);
    *(v28 + 32) = *(v26 + 32);
    *v28 = v29;
    *(v28 + 16) = v30;
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1(v25, ((v24 + 47) & 0xFFFFFFFFFFFFFFF8));
  }

  v33 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(v22 + v33) = *(v23 + v33);
  return a1;
}

uint64_t initializeWithTake for TimeDataFormatting.Resolvable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 32))(v13, v14);
  v15 = *(v11 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(v7 + 80) & 0xF8;
  v19 = v18 + 15;
  v20 = v16 + v18 + 15;
  v21 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 & v21;
  v23 = (v17 + v19) & v21;
  v8(v20 & v21, v23, v6);
  v24 = (v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v9 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 32);
  v27 = *(v25 + 16);
  *v24 = *v25;
  *(v24 + 16) = v27;
  *(v24 + 32) = v26;
  v28 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v29;
  v30 = *(v29 + 16);
  *(v28 + 32) = *(v29 + 32);
  *v28 = v31;
  *(v28 + 16) = v30;
  v32 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(v22 + v32) = *(v23 + v32);
  return a1;
}

uint64_t assignWithTake for TimeDataFormatting.Resolvable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 40);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(v7 + 80) & 0xF8;
  v19 = v18 + 15;
  v20 = v16 + v18 + 15;
  v21 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 & v21;
  v23 = (v17 + v19) & v21;
  v8(v20 & v21, v23, v6);
  v24 = (v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v9 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v24);
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (*(v28 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v29 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v31 = *(v29 + 16);
  *(v28 + 32) = *(v29 + 32);
  *v28 = v30;
  *(v28 + 16) = v31;
  v32 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(v22 + v32) = *(v23 + v32);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataFormatting.Resolvable(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v10 + v11;
  v15 = *(*(v7 - 8) + 64) + 7;
  v16 = *(v5 + 80) & 0xF8 | 7;
  v17 = v10 + 7;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v18 = (((v17 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + ((v16 + ((v15 + (v14 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + 48;
  v19 = a2 - v13;
  v20 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = v19 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = *(a1 + v18);
    if (!v24)
    {
      goto LABEL_30;
    }

LABEL_27:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v13 + (v27 | v26) + 1;
  }

  if (v23 == 2)
  {
    v24 = *(a1 + v18);
    if (v24)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v24 = *(a1 + v18);
    if (v24)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v6 == v13)
  {
LABEL_31:
    v28 = *(v5 + 48);

    return v28();
  }

  v29 = (a1 + v14) & ~v11;
  if (v9 >= v12)
  {
    v32 = *(v8 + 48);

    return v32(v29, v9, v7);
  }

  else
  {
    v30 = (((v15 + v29) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16;
    if (v6 >= 0x7FFFFFFF)
    {
      goto LABEL_31;
    }

    v31 = *(((v17 + v30) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    return (v31 + 1);
  }
}